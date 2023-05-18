import 'dart:developer';

import 'package:clijeo_public/controllers/core/api_core/api_utils.dart';
import 'package:clijeo_public/controllers/core/api_core/dio_base.dart';
import 'package:clijeo_public/controllers/core/auth/backend_auth.dart';
import 'package:clijeo_public/controllers/core/shared_pref/shared_pref.dart';
import 'package:clijeo_public/main.dart';
import 'package:dio/dio.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ClijeoNotificationController {
  static const AndroidNotificationChannel channel = AndroidNotificationChannel(
    'clijeo_notifs', // id
    'CliJEO Notifications', // name
    description: 'This channel is used for CliJEO notifications.',
    importance: Importance.high,
  );

  static final FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
      FlutterLocalNotificationsPlugin();

  static Future<void> setupNotifications() async {
    await Firebase.initializeApp();

    // handle notifications received while app is not in foreground
    FirebaseMessaging.onBackgroundMessage(_notificationHandler);
    await flutterLocalNotificationsPlugin
        .resolvePlatformSpecificImplementation<
            AndroidFlutterLocalNotificationsPlugin>()
        ?.requestPermission();
    await flutterLocalNotificationsPlugin
        .resolvePlatformSpecificImplementation<
            AndroidFlutterLocalNotificationsPlugin>()
        ?.createNotificationChannel(channel);

    await FirebaseMessaging.instance
        .setForegroundNotificationPresentationOptions(
      alert: true,
      badge: true,
      sound: true,
    );

    // Get any messages which caused the application to open from
    // a terminated state.
    RemoteMessage? initialMessage =
        await FirebaseMessaging.instance.getInitialMessage();

    // navigate to the relevant page when app opens from notification.
    // if opening from terminated state
    if (initialMessage != null) {
      _handleMessage(initialMessage);
    }
    // if opening when app is already in background
    FirebaseMessaging.onMessageOpenedApp.listen(_handleMessage);

    FirebaseMessaging.onMessage.listen(_notificationHandler);

    var token = await FirebaseMessaging.instance.getToken();

    if (token != null) {
      log("fcm token is $token");
      await _fcmTokenHandler(token);
    }
  }

  static Future<void> _fcmTokenHandler(String fcmToken) async {
    bool? isFcmTokenPushed =
        await ClijeoSharedPref.getIsFcmTokenPushedFromSharedPref();
    if (isFcmTokenPushed == null || !isFcmTokenPushed) {
      try {
        // Pushing the data to the backend
        await DioBase.dioInstance.post(ApiUtils.fcmTokenSaveUrl,
            options: Options(
              headers: {
                'Authorization': 'Bearer ${BackendAuth.getToken()}',
              },
            ),
            data: {"fcmToken": fcmToken});
        // Updating shared preferences
        await ClijeoSharedPref.addIsFcmTokenPushedToSharedPref(true);
      } on DioError catch (e) {
        log("[ClijeoNotifications] (_fcmTokenHandler) DioError: ${e.message}");
      } on Error catch (e) {
        log("[ClijeoNotifications] (_fcmTokenHandler) Error: ${e.toString()}");
      }
    }
  }

  @pragma('vm:entry-point')
  static Future<void> _notificationHandler(RemoteMessage message) async {
    // if notification arrives when app is in foreground, launch it manaually
    var initializationSettings = const InitializationSettings(
        android: AndroidInitializationSettings('@mipmap/ic_launcher'));
    flutterLocalNotificationsPlugin.initialize(initializationSettings);

    // receive the data notification and send a local notification
    var messageData = message.data;

    if (messageData.isNotEmpty) {
      flutterLocalNotificationsPlugin.show(
          39,
          messageData['title'],
          messageData['body'],
          NotificationDetails(
            android: AndroidNotificationDetails(
              channel.id,
              channel.name,
              channelDescription: channel.description,
            ),
          ));
    }
  }

  static void _handleMessage(RemoteMessage message) {
    var queryId = message.data['queryId'];

    //TODO is a service in manifest needed to handle foreground notification clicks?
    print(message.data);
  }
}
