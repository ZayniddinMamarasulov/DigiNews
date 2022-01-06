import 'package:flutter/material.dart';

class SignButtons extends StatelessWidget {
  final Color color;
  final String icon;
  final String txt;
  final void Function() func;
  const SignButtons({
    Key? key,
    required this.func,
    required this.color,
    required this.icon,
    required this.txt,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16.0),
      child: InkWell(
        onTap: () {
          func();
        },
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: color,
            border: Border.all(
              color: color == Colors.white
                  ? Colors.grey.shade200
                  : Colors.transparent,
            ),
          ),
          height: 56,
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              children: [
                Image.asset(icon),
                const SizedBox(width: 54),
                Text(
                  txt,
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                      color:
                          color == Colors.white ? Colors.black : Colors.white),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
