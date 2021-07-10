import 'package:google_sign_in/google_sign_in.dart';
import 'package:star_wars_app/models/user.model.dart';

class AuthApi {
  Future<UserModel> loginWithGoogle() async {
    try {
      GoogleSignIn _googleSignIn = GoogleSignIn(
      scopes: [
        'email',
      ],
    );
    var googleUser = await _googleSignIn.signIn();
    UserModel user = UserModel(
      id: googleUser.id,
      name: googleUser.displayName,
      email: googleUser.email,
    );

    return user;
    } catch (e) {
      throw e;
    }
  }
}