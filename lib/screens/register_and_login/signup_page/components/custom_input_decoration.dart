import 'package:flutter/material.dart';

InputDecoration customInputDecoration(bool isError, String hintText) {
  return InputDecoration(
    contentPadding: const EdgeInsets.symmetric(horizontal: 18, vertical: 18),
    border: isError
        ? OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: const BorderSide(color: Colors.red),
          )
        : InputBorder.none,
    hintText: hintText,
    enabledBorder: isError
        ? OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: const BorderSide(color: Colors.red),
          )
        : InputBorder.none,
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: BorderSide(color: (isError ? Colors.red : Colors.lightBlue)),
    ),
  );
}
