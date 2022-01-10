import 'package:flutter/material.dart';

class CustomContainer extends StatelessWidget {
  final Widget child;
  final String titleForm;
  const CustomContainer(
      {Key? key, required this.child, required this.titleForm})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          titleForm,
          style: const TextStyle(
              fontSize: 16, fontWeight: FontWeight.w700, color: Colors.black),
        ),
        Container(
          margin: const EdgeInsets.only(top: 6, bottom: 12),
          height: 56,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: Colors.grey.shade100,
          ),
          child: child,
        ),
      ],
    );
  }
}
