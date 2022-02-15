import 'package:flutter/material.dart';

class CustomCaruselIndicators extends StatelessWidget {
  const CustomCaruselIndicators({
    Key? key,
    required this.currentIndex,
  }) : super(key: key);

  final int currentIndex;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          margin: const EdgeInsets.only(right: 8),
          height: 5,
          width: 28,
          decoration: BoxDecoration(
            color: currentIndex == 0 ? Colors.black : Colors.grey.shade200,
            borderRadius: BorderRadius.circular(8),
          ),
        ),
        Container(
          margin: const EdgeInsets.only(right: 8),
          height: 5,
          width: 28,
          decoration: BoxDecoration(
            color: currentIndex == 1 ? Colors.black : Colors.grey.shade200,
            borderRadius: BorderRadius.circular(8),
          ),
        ),
        Container(
          margin: const EdgeInsets.only(right: 8),
          height: 5,
          width: 28,
          decoration: BoxDecoration(
            color: currentIndex == 2 ? Colors.black : Colors.grey.shade200,
            borderRadius: BorderRadius.circular(8),
          ),
        ),
      ],
    );
  }
}
