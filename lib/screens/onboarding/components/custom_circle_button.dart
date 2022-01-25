import 'package:flutter/material.dart';

class CustomCircleButton extends StatelessWidget {
  const CustomCircleButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const CircleAvatar(
      backgroundColor: Colors.black,
      radius: 40,
      child: Icon(
        Icons.arrow_forward,
        color: Colors.white,
        size: 28,
      ),
    );
  }
}
