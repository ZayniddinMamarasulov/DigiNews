import 'package:flutter/material.dart';
import 'package:news_app/colors.dart';
import 'package:news_app/screens/SignUp_page.dart';
import 'package:news_app/screens/email_page.dart';
import 'package:news_app/screens/home_page.dart';

class AuthPage extends StatefulWidget {
  const AuthPage({Key? key}) : super(key: key);

  @override
  _AuthPageState createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 124.0),
                Image.asset("assets/digi-newsa.png"),
                const SizedBox(height: 70),
                emailButtons(),
                const SizedBox(height: 18),
                facebookButtons(),
                const SizedBox(height: 18,),
                googleButtons(),
                const SizedBox(height: 18,),
                loginButtons(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget emailButtons() {
    return InkWell(
      onTap: () {
      },
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12), color: Colors.black),
        height: 56,
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            children: [
              Image.asset('assets/sms.png'),
              const SizedBox(width: 54),
              const Text(
                "Continue with Email",
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                    color: Colors.white),
              )
            ],
          ),
        ),
      ),
    );
  }
  Widget facebookButtons() {
    return InkWell(
      onTap: () {
      },
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12), color: Colors.blue),
        height: 56,
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            children: [
              Image.asset('assets/facebook.png'),
              const SizedBox(width: 54),
              const Text(
                "Continue with facebook",
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                    color: Colors.white),
              )
            ],
          ),
        ),
      ),
    );
  }
  Widget googleButtons() {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context,SignUpPage.id);
      },
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12), color: Colors.white),
        height: 56,
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            children: [
              Image.asset('assets/Google .png'),
              const SizedBox(width: 54),
              const Text(
                "Continue with Google",
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                    color: Colors.black),
              )
            ],
          ),
        ),
      ),
    );
  }
  Widget loginButtons() {
    return InkWell(
      onTap: () {
      },
      child: Container(
          child:Row(
          mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Already have an account?",style: TextStyle(fontSize: 18),),
              FlatButton(
                onPressed: (){
                  Navigator.of(context).push(_createRoute());
                },
                child: Text("Login",style: TextStyle(fontWeight: FontWeight.w700,color: Colors.red,fontSize: 18),),
              ),
            ],
          )
      )
    );
  }

  Route _createRoute() {
    return PageRouteBuilder(
      pageBuilder: (context, animations, secondaryAnimation) => EmailPage(),
    );

  }

}
