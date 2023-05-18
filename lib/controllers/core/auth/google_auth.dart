import 'dart:developer';
import 'package:clijeo_public/config.dart';
import 'package:google_sign_in/google_sign_in.dart';

class GoogleAuth {
  static Future<String?> signInWithGoogle() async {
    // Trigger the authentication flow
    GoogleSignInAccount? googleUser = await GoogleSignIn(
      serverClientId: ClijeoConfig.serverClientId,
      scopes: ['email', 'openid', 'profile'],
    ).signIn();

    // Obtain the auth details from the request
    final GoogleSignInAuthentication? googleAuth =
        await googleUser?.authentication;

    var idToken = googleAuth?.idToken;
    // using the log function here because print() caps at 1024 chars
    // took some time to figure that out (:smileinpain:)
    if (idToken != null) log(idToken);

    return googleAuth?.idToken;
  }

  static Future<void> disconnectGoogleSignInControllerConnection() async {
    await GoogleSignIn().disconnect();
  }
}
