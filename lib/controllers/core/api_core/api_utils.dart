class ApiUtils {
  // For Login via passing google auth ID token
  static const String loginUrl = '/admin/login';

  // For getting user data including queries
  static const String userUrl = '/admin/me';

  // For updating user data
  static const String userProfileUpdateUrl = '/admin/update';

  // For getting a particular queries details
  static String getQueryDetailsUrl(int queryId) => '/query/$queryId/admin';

  // For getting a particular users details
  static String getUserDetails(String userId) => '/admin/userDetails/$userId';

  // For replying to a particular query
  static String replyQueryUrl(int queryId) => '/respond/$queryId/user';

  // For saving the fcm token of a user
  static String fcmTokenSaveUrl = '/fcm-token/save/admin';

  // For fetching media
  static String mediaUrl(String filename) => '/media/$filename';
}
