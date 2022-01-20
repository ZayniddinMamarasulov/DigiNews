import 'dart:io';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class EasyLocalizationCustomWidget extends StatelessWidget {
  final Widget child;
  const EasyLocalizationCustomWidget({Key? key, required this.child})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return EasyLocalization(
      supportedLocales: const [
        Locale('en', 'US'),
        Locale('ru', 'RU'),
        Locale('uz', 'UZ'),
      ],
      path: 'assets/lang', // <-- change the path of the translation files
      fallbackLocale: Locale(Platform.localeName),
      child: child,
    );
  }
}
