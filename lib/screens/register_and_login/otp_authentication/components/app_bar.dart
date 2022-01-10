import 'package:flutter/material.dart';

AppBar buildAppBar(BuildContext context) {
  return AppBar(
    backgroundColor: Colors.white,
    elevation: 0,
    leading: IconButton(
      icon: const Icon(Icons.arrow_back),
      color: Colors.black,
      onPressed: () => Navigator.of(context).pop(),
    ),
  );
}
