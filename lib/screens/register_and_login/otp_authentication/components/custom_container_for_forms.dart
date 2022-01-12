import 'package:flutter/material.dart';

class CustomContainerForCode extends StatelessWidget {
  final Widget child;
  const CustomContainerForCode({Key? key, required this.child})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 64,
      width: 64,
      margin: const EdgeInsets.all(4),
      alignment: Alignment.center,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: Colors.grey.shade50,
      ),
      child: child,
    );
  }
}
