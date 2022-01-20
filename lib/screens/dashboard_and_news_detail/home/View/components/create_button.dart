import 'package:flutter/material.dart';

class ViewButton extends StatelessWidget {
  final void Function() func;
  const ViewButton({
    Key? key,
    required this.func,
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
          alignment: Alignment.center,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: Colors.black,
          ),
          height: 56,
          width: double.infinity,
          child: const Padding(
            padding: EdgeInsets.all(16.0),
            child: Text(
              'Save changes',
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                  color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}
