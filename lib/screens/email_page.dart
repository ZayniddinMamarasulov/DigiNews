import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:news_app/screens/Reset_Password_page.dart';
import 'package:news_app/screens/register_and_login/login_page/components/error_page.dart';
import 'package:news_app/screens/verify_page.dart';

class EmailPage extends StatefulWidget {
  static const String id="email_page";
  const EmailPage({Key? key}) : super(key: key);

  @override
  _EmailPageState createState() => _EmailPageState();
}

class _EmailPageState extends State<EmailPage> {
  final formKey = GlobalKey<FormState>();
  bool isPassVisible = true;
  String password = "";
  String email = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[100],
        appBar: AppBar(
          backgroundColor: Colors.grey[100],
          elevation: 0,
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            color: Colors.black,
            onPressed: () => Navigator.of(context).pop(),
          ),
        ),
        body: ListView(
          children: [
            Container(
                child: Padding(
              padding: const EdgeInsets.all(24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Welcome back!",
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  const Text(
                    "Enter your email address and password to login",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w300),
                  ),
                  const SizedBox(
                    height: 48,
                  ),
                  Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        const Text(
                          "Email",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w600),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Container(
                          child:  Center(
                              child: Form(
                                key: formKey,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    TextFormField(
                                      obscureText: isPassVisible,
                                      decoration: InputDecoration(
                                        border: OutlineInputBorder(
                                          // borderSide: BorderSide.none,
                                          borderRadius: BorderRadius.circular(16),
                                        ),
                                        hintText: "Your emaill addres",

                                      ),
                                      validator: (value) {
                                        if (!value!.contains("@")) {
                                          return "Emaill must have an @ sign";
                                        }
                                      },
                                      onSaved: (value) => setState(() {
                                        password = value!;
                                      }),
                                    ),
                                    const SizedBox(height: 10,),
                                    
                                   Container(
                                     width: double.infinity,
                                     child: Column(
                                       crossAxisAlignment: CrossAxisAlignment.start,
                                       children: [
                                         Text("Password",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w600),),
                                         SizedBox(height: 10,),
                                         TextFormField(
                                           obscureText: isPassVisible,
                                           decoration: InputDecoration(
                                             border: OutlineInputBorder(
                                               // borderSide: BorderSide.none,
                                               borderRadius: BorderRadius.circular(12),
                                             ),
                                             hintText: "Your password",
                                             suffixIcon: IconButton(
                                               icon: isPassVisible
                                                   ? Icon(Icons.visibility)
                                                   : Icon(Icons.visibility_off),
                                               onPressed: () {
                                                 setState(() {
                                                   isPassVisible = !isPassVisible;
                                                 });
                                               },
                                             ),
                                           ),
                                           validator: (value) {
                                             if (value!.length < 6) {
                                               return "cod is not less than six";
                                             }
                                           },
                                           onSaved: (value) => setState(() {
                                             password = value!;
                                           }),
                                         ),
                                       ],
                                     ),
                                   )
                                    
                                  ],
                                ),
                              ),
                          ),
                        ),

                         SizedBox(
                          height: 18,
                        ),
                        Align(
                          alignment: Alignment.bottomRight,
                          child: TextButton(
                            //shuni Align degan Widgetga Prada kegin alignment deganiga bottomright qil
                            onPressed: () {
                              Navigator.pushNamed(context, ResetPasswordPage.id);
                            },
                            child: const Text(
                              "Forgot Password",
                              style: TextStyle(
                                  color: Colors.red,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 60,
                        ),
                        emailButtons(),
                        const SizedBox(
                          height: 18,
                        ),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Text(
                                "Don’t have an account?",
                                style: TextStyle(
                                    fontSize: 14, fontWeight: FontWeight.w400),
                              ),
                              const SizedBox(
                                width: 5,
                              ),
                              TextButton(
                                  onPressed: () {},
                                  child: const Text(
                                    "Sign Up",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w700,
                                        color: Colors.red),
                                  ))
                            ])
                      ],
                    ),
                  ),
                ],
              ),
            )),
          ],
        ));
  }

  Widget emailButtons() {
    return InkWell(
      onTap: () {
        final isValid = formKey.currentState!.validate();
        if (isValid) {
          formKey.currentState!.save();
          Navigator.pushNamed(context, VerifyPage.id);
        }
      },
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12), color: Colors.black),
        height: 56,
        width: double.infinity,
        child: const Padding(
            padding: EdgeInsets.all(16.0),
            child: Center(
              child: Text(
                "Login",
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                    color: Colors.white),
              ),
            )),
      ),
    );
  }
}
