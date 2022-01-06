import 'package:flutter/material.dart';

ButtonStyle buildButtonStyle() {
  return ButtonStyle(
    shape: MaterialStateProperty.all(
      RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
    ),
    backgroundColor: MaterialStateProperty.all(Colors.grey.shade900),
  );
}