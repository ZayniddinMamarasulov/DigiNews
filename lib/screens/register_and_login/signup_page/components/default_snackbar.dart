import 'package:flutter/material.dart';

void defaultSnackBar(String message, BuildContext context) {
  final snackBar = SnackBar(
    content: Text(message),
    backgroundColor: Colors.red,
  );
  ScaffoldMessenger.of(context).showSnackBar(snackBar);
}
