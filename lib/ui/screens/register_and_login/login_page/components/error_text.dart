import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ErrorText extends StatelessWidget {
  final String? errorText;
  const ErrorText({Key? key, required this.errorText}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;

    return Align(
      alignment: Alignment.topLeft,
      child: Padding(
        padding: EdgeInsets.only(top: height * 0.02, bottom: height * 0.18),
        child: Text(
          errorText == null ? '' : '• $errorText',
          style: const TextStyle(color: Colors.red),
        ),
      ),
    );
  }
}
