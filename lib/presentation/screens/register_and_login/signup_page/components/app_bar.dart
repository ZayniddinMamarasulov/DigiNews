import 'package:flutter/material.dart';
import 'package:news_app/utils/app_theme.dart';

AppBar buildAppBar(BuildContext context) {
  return AppBar(
    elevation: 0,
    leading: IconButton(
      icon: const Icon(Icons.arrow_back),
      onPressed: () => Navigator.of(context).pop(),
    ),
  );
}
