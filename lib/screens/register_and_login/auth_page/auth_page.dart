import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:news_app/screens/register_and_login/signup_page/components/default_snackbar.dart';
import 'package:news_app/services/auth_firebase_service.dart';
import '../../../main_navigation.dart';
import 'components/agreement_text.dart';
import 'components/login_text_button.dart';
import 'components/sign_buttons.dart';
import 'components/welcome_text.dart';

class AuthPage extends StatefulWidget {
  AuthPage({Key? key}) : super(key: key);

  @override
  _AuthPageState createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
  final auth = AuthFirebaseService();

  void signInWithGoogle() async {
    try {
      final textResponst = await auth.signInwithGoogle();
      Navigator.of(context).pop();
      setState(() {});
      if (textResponst is UserCredential) {
        Navigator.popAndPushNamed(context, MainNavigationRouteNames.home);
      } else {
        defaultSnackBar(textResponst.toString(), context);
      }
    } catch (e) {
      defaultSnackBar(e.toString(), context);
    }
  }

  void signInWithFacebook() async {
    try {
      final textRes = await auth.signInWithFacebook();
      Navigator.of(context).pop();
      setState(() {});
      if (textRes is Map) {
        Navigator.popAndPushNamed(context, MainNavigationRouteNames.home);
      } else {
        defaultSnackBar(textRes.toString(), context);
      }
    } catch (e) {
      defaultSnackBar(e.toString(), context);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const WelcomeText(),
              SignButtons(
                color: Colors.black,
                icon: 'assets/images/sms.png',
                txt: 'Continue with Email',
                func: () {
                  Navigator.of(context)
                      .pushNamed(MainNavigationRouteNames.signUp);
                },
              ),
              SignButtons(
                color: Colors.blue,
                icon: 'assets/images/fb_icon.png',
                txt: 'Continue with Facebook',
                func: () {
                  setState(() {
                    show(context);
                    signInWithFacebook();
                  });
                },
              ),
              SignButtons(
                color: Colors.white,
                icon: 'assets/images/google_icon.png',
                txt: 'Continue with Google',
                func: () {
                  setState(() {
                    show(context);
                    signInWithGoogle();
                  });
                },
              ),
              const LoginTextButton(),
              const AgreementText(),
              const SizedBox(height: 10.0),
            ],
          ),
        ),
      ),
    );
  }

  show(BuildContext context, {String text = 'Loading...'}) {
    showDialog<void>(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return WillPopScope(
          onWillPop: () async => false,
          child: SimpleDialog(
            backgroundColor: Colors.white,
            children: [
              Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(left: 16, top: 16, right: 16),
                      child: CircularProgressIndicator(),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(16),
                      child: Text(text),
                    )
                  ],
                ),
              )
            ],
          ),
        );
      },
    );
  }
}
