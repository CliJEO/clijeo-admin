import 'package:clijeo_public/config.dart';
import 'package:dio/dio.dart';

class DioBase {
  static late Dio dioInstance;

  static void initDio() {
    //TODO: CHANGE TO BACKEND DOMAIN
    final baseOptions = BaseOptions(baseUrl: ClijeoConfig.backendBaseUrl);
    dioInstance = Dio(baseOptions);
  }
}

// USUAL: 'http://10.0.2.2:3001'