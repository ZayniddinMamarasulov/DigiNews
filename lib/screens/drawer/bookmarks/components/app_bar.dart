import 'package:flutter/material.dart';

AppBar buildAppBar(BuildContext context) {
  return AppBar(
    elevation: 0,
    leading: IconButton(
      icon: const Icon(Icons.arrow_back),
      onPressed: () => Navigator.of(context).pop(),
    ),
    actions: [
      IconButton(
        onPressed: () {},
        icon: Image.asset('assets/icons/ic_search.png'),
      ),
    ],
  );
}