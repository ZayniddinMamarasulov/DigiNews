// ignore_for_file: must_be_immutable

import 'package:bouncing_widget/bouncing_widget.dart';
import 'package:flutter/material.dart';

class Bounce extends StatelessWidget {
  Widget child;

  Bounce({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BouncingWidget(
        duration: const Duration(milliseconds: 100),
        scaleFactor: 1.5,
        onPressed: () {
          debugPrint("onPressed");
        },
        child: child);
  }
}
