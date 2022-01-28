import 'package:flutter/material.dart';

List<bool> _isSelected = [false, true];
Widget selectFontStyle(BuildContext context) {
  var height = MediaQuery.of(context).size.height;
  return Container(
    width: 326,
    height: 40,
    decoration: BoxDecoration(
      border: Border.all(
        color: Colors.white,
      ),
      borderRadius: const BorderRadius.all(
        Radius.circular(12.0),
      ),
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        ToggleButtons(
          borderRadius: BorderRadius.circular(12.0),
          borderColor: Colors.grey[200],
          children: [
            Expanded(
              child: Container(
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(12.0),
                    bottomLeft: Radius.circular(12.0),
                  ),
                ),
                width: height * 0.166,
                height: 40,
                child: const Text(
                  "Sans",
                  style: TextStyle(
                      color: Colors.red,
                      fontWeight: FontWeight.w400,
                      fontSize: 16.0),
                ),
                alignment: Alignment.center,
              ),
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: const BorderRadius.only(
                    topRight: Radius.circular(12.0),
                    bottomRight: Radius.circular(12.0),
                  ),
                ),
                width: height * 0.166,
                height: 40,
                child: Text(
                  "Serif",
                  style: TextStyle(
                      color: Colors.grey[900],
                      fontWeight: FontWeight.w500,
                      fontSize: 16.0),
                ),
                alignment: Alignment.center,
              ),
            ),
          ],
          isSelected: _isSelected,
          onPressed: (int index) {
            setState(index);
          },
        ),
      ],
    ),
  );
}

void setState(int index) {}
