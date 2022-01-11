import 'package:flutter/material.dart';
import 'package:news_app/screens/email_page.dart';
import 'package:news_app/screens/register_and_login/login_page/components/error_page.dart';
import 'package:news_app/screens/verify_page.dart';

class SignUpPage extends StatefulWidget {
  static const String id="signuppage";
  const SignUpPage({Key? key}) : super(key: key);

  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final formKey = GlobalKey<FormState>();
  bool isPassVisible = true;
  String password1= "";
  String email1 = "";
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
          Padding(
            padding: EdgeInsets.all(24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children:  [
                const Text("Sign Up",style: TextStyle(fontSize: 24,fontWeight: FontWeight.w700),),
                SizedBox(height: 16,),
                const Text("It only  takes a minute to create your account",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w300),),
                SizedBox(height: 48,),
                Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children:   [
                      const Text("Name",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w600),),
                      const SizedBox(height: 10,),
                      Container(
                          height: 56,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: Colors.grey[200],
                          ),
                          child:  Center(
                            child: TextField(
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(16)
                                    ),
                                      hintText: "Your name",
                                      hintStyle: TextStyle(fontWeight: FontWeight.w500,fontSize: 16)
                                  ),
                                ),
                          )
                      ),
                      SizedBox(height: 10,),
                      Text("Email",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 16),),
                      SizedBox(height: 10,),
                      Container(
                        color: Colors.grey[200],
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
                                      borderRadius: BorderRadius.circular(12),
                                    ),
                                    hintText: "Your emaill addres",

                                  ),
                                  validator: (value) {
                                    if (!value!.contains("@")) {
                                      return "Emaill must have an @ sign";
                                    }
                                  },
                                  onSaved: (value) => setState(() {
                                    password1 = value!;
                                  }),
                                ),
                                const SizedBox(height: 10,),

                                Container(
                                  color: Colors.grey[200],
                                  width: double.infinity,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text("Password",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w600),),
                                      SizedBox(height: 10),
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
                                          password1 = value!;
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
                      SizedBox(height: 60,),
                      emailButtons(),
                      SizedBox(height: 18,),
                      Container(
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children:  [
                              const Text("Already have an account?",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w400),),
                              FlatButton(
                                  onPressed: (){
                                    Navigator.pushNamed(context, EmailPage.id);
                                  }
                                  , child: const Text("Login",style: TextStyle(fontWeight: FontWeight.w700,color: Colors.red),)
                              )
                            ]
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
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
              child:  Text(
                "Create account",
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                    color: Colors.white),
              ),
            )
        ),
      ),
    );
  }
}