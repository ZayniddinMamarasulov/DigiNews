import 'package:flutter/material.dart';

AppBar buildAppBar(BuildContext context) {
  return AppBar(
    elevation: 0,
    centerTitle: true,
    title: const Text(
      'Write News',
      style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
    ),
    leading: IconButton(
      onPressed: () => Navigator.of(context).pop(),
      icon: const Icon(Icons.arrow_back),
    ),
  );
}
