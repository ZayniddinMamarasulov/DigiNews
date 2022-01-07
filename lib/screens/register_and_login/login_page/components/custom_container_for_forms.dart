import 'package:flutter/material.dart';

class CustomContainer extends StatelessWidget {
  final Widget child;
  final String titleForm;
  final bool isError;
  const CustomContainer(
      {Key? key,
      required this.child,
      required this.titleForm,
      required this.isError})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(titleForm),
        Container(
          margin: const EdgeInsets.only(top: 6, bottom: 16),
          height: 56,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: Colors.grey.shade50,
            /*border: Border.all(
                color: isError ? Colors.redAccent : Colors.transparent),*/
          ),
          child: child,
        ),
      ],
    );
  }
}
