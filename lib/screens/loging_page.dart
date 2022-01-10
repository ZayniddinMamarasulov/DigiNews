import 'package:flutter/material.dart';

import '../colors.dart';

class LogingPage extends StatefulWidget {
  const LogingPage({Key? key}) : super(key: key);

  @override
  _LogingPageState createState() => _LogingPageState();
}

class _LogingPageState extends State<LogingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 124),
                Image.asset("assets/app_logo.png"),
                SizedBox(height: 24),
                const Text(
                  "Welcome To           DigiNews",
                  style: TextStyle(fontSize: 32, fontWeight: FontWeight.w700),
                ),
                const SizedBox(height: 100),
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Colors.black),
                  height: 56,
                  width: double.infinity,
                  child: Padding(
                    padding: const EdgeInsets.all(16),
                    child: Row(
                      children: [
                        Image.asset("assets/sms.png"),
                        const SizedBox(width: 54),
                        const Text(
                          "Continue with emile",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 15),
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Colors.indigoAccent),
                  height: 56,
                  width: double.infinity,
                  child: Padding(
                    padding: const EdgeInsets.all(16),
                    child: Row(
                      children: [
                        Image.asset("assets/img.png"),
                        const SizedBox(width: 54),
                        const Text(
                          "Continue with Facebook",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 15),
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Colors.white),
                  height: 56,
                  width: double.infinity,
                  child: Padding(
                    padding: const EdgeInsets.all(16),
                    child: Row(
                      children: [
                        Image.asset("assets/img_1.png"),
                        const SizedBox(width: 54),
                        const Text(
                          "Continue with emile",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Row(
                  children: const [
                    Text(
                      "Alredy have an account?",
                      style: TextStyle(
                          fontWeight: FontWeight.w300,
                          color: Colors.black,
                          fontSize: 14),
                    ),
                    SizedBox(width: 5),
                    Text(
                      "Loging",
                      style: TextStyle(
                          color: Colors.red, fontWeight: FontWeight.w800),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 24),
                  child: Row(
                    children: [
                      const Text("By continuing, you accept the"),
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
}
