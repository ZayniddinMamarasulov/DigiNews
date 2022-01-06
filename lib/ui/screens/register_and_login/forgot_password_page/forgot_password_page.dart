import 'package:flutter/material.dart';
import 'package:news_app/ui/utils/app_bar.dart';
import 'components/verification_method.dart';

class ForgotPasswordPage extends StatefulWidget {
  const ForgotPasswordPage({Key? key}) : super(key: key);

  @override
  _ForgotPasswordPageState createState() => _ForgotPasswordPageState();
}

class _ForgotPasswordPageState extends State<ForgotPasswordPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: buildAppBar(context),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 22.0),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 12.0, bottom: 12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Reset Password',
                      style: TextStyle(fontWeight: FontWeight.w700, fontSize: 24),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      'Select verification method and we will send verification code',
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 16,
                          color: Colors.grey.shade600),
                    ),
                  ],
                ),
              ),
              const VerificationMethod(),
            ],
          ),
        ),
      ),
    );
  }
}
