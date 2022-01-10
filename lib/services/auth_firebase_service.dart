import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

class AuthFirebaseService {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final GoogleSignIn _googleSignIn = GoogleSignIn();
  Future<dynamic> signUpUserEmail(String? email, String? password) async {
    return _auth
        .createUserWithEmailAndPassword(email: email!, password: password!)
        .then((user) {
      return user;
    }).catchError((e) {
      print(e);
      return e;
    });
  }

  Future<dynamic> signInwithGoogle() async {
    try {
      final GoogleSignInAccount? googleSignInAccount =
          await _googleSignIn.signIn();
      final GoogleSignInAuthentication googleSignInAuthentication =
          await googleSignInAccount!.authentication;
      final AuthCredential credential = GoogleAuthProvider.credential(
        accessToken: googleSignInAuthentication.accessToken,
        idToken: googleSignInAuthentication.idToken,
      );
      return await _auth.signInWithCredential(credential);
    } on FirebaseAuthException catch (e) {
      print(e.message);
      throw e;
    }
  }

  Future<dynamic> signInWithFacebook() async {
    try {
      final facebookLogin =
          await FacebookAuth.instance.login(permissions: ['email']);
      final userdata = await FacebookAuth.instance.getUserData();

      final facebookAuthCredential =
          FacebookAuthProvider.credential(facebookLogin.accessToken!.token);
      await _auth.signInWithCredential(facebookAuthCredential);

      return userdata;
    } catch (e) {
      print(e);
    }
  }

  Future<bool> signOut() async {
    return _auth.signOut().then((_) {
      return true;
    }).catchError((e) {
      print(e);
      return false;
    });
  }

  Future<bool> chekadUser() async {
    var currentUser = _auth.currentUser;
    return currentUser != null;
  }
}
