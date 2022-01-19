import 'package:flutter/material.dart';

class FontSize extends StatefulWidget {
  const FontSize({Key? key}) : super(key: key);

  @override
  State<FontSize> createState() => _FontSizeState();
}

class _FontSizeState extends State<FontSize> {
  RangeValues values = const RangeValues(0.0, 100.0);
  double count = 0.0;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        const Text(
          "A",
          style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w400),
        ),
        SliderTheme(
          data: SliderThemeData(
              activeTrackColor: Colors.black,
              inactiveTrackColor: Colors.grey[400],
              trackHeight: 6.0,
              thumbColor: Colors.black,
              thumbShape: const RoundSliderThumbShape(enabledThumbRadius: 8.0),
              minThumbSeparation: 100.0,
              valueIndicatorTextStyle: const TextStyle(fontSize: 10.0),
              valueIndicatorColor: Colors.white),
          child: Slider(
              min: 0.0,
              max: 100.0,
              divisions: 10,
              value: count,
              onChanged: (value) {
                setState(() {
                  count = value;
                });
              }),
        ),
        const Text(
          "A",
          style: TextStyle(fontSize: 22.0, fontWeight: FontWeight.w700),
        ),
      ],
    );
  }
}
