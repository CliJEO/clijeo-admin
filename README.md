# clijeo_admin

## Managing multilanguage support
https://medium.com/flutter-community/flutter-internationalization-the-easy-way-using-provider-and-json-c47caa4212b2

## Managing UI scaling
https://medium.com/flutter-community/flutter-effectively-scale-ui-according-to-different-screen-sizes-2cb7c115ea0a

## Flutter State Management
https://docs.flutter.dev/development/data-and-backend/state-mgmt/simple

https://medium.com/flutter-community/making-sense-all-of-those-flutter-providers-e842e18f45dd

https://codewithandrea.com/videos/flutter-state-management-setstate-freezed-state-notifier-provider/

## AutoLogin
https://medium.com/swlh/google-sign-in-with-auto-login-in-flutter-93281747bed4

## Tried
https://medium.com/flutter-community/flutter-sign-in-with-google-in-android-without-firebase-a91b977d166f

# Notes
For notifications to be sent, the fcm token needs to be saved on the backend. This can only be done once the user is authenticated. When the user opens the app for the first time, the fcm token is generated, but since they are not logged in, it is not saved. Every time the user **fully** closes and reopens the app, the fcm token is sent to the backend again (it might change). Basically, the fcm token is made available when the app is opened, but the authentication is not available(in first login).

As a result, for push notifications to work, the app needs to be opened, then the user needs to login, then they need to close the app and reopen it. This can be fixed by saving the generated fcm token to a temporary sharedpref and then using that value after first login.
