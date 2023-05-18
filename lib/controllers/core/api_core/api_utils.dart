class ApiUtils {
  // For Login via passing google auth ID token
  static const String loginUrl = '/user/login';

  // For getting user data including queries
  static const String userUrl = '/user/me';

  // For updating user data
  static const String userProfileUpdateUrl = '/user/update';

  // For creating a new query
  static const String createQueryUrl = '/query/create';

  // For getting a particular queries details
  static String getQueryDetailsUrl(int queryId) => '/query/$queryId';

  // For replying to a particular query
  static String replyQueryUrl(int queryId) => '/respond/$queryId/user';

  // For saving the fcm token of a user
  static String fcmTokenSaveUrl = '/fcm-token/save/user';

  // For fetching media
  static String mediaUrl(String filename) => '/media/$filename';
}
