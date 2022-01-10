import 'package:flutter/material.dart';

import '../../../verify_page.dart';

class ErrorPage extends StatefulWidget {
  static const String id="error_page";
  const ErrorPage({Key? key}) : super(key: key);

  @override
  _ErrorPageState createState() => _ErrorPageState();
}

class _ErrorPageState extends State<ErrorPage> {
  final formKey = GlobalKey<FormState>();
  bool isPassVisible = true;
  String password = "";
  String email = "";


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:   Container(
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
