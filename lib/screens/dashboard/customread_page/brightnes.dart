import 'package:flutter/material.dart';

class BrightnesPage extends StatefulWidget {
  BrightnesPage({Key? key}) : super(key: key);

  @override
  State<BrightnesPage> createState() => _BrightnesPageState();
}

class _BrightnesPageState extends State<BrightnesPage> {
  double count = 0.0;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        const Icon(
          Icons.wb_sunny_outlined,
          size: 16.0,
        ),
        SliderTheme(
          data: SliderThemeData(
              activeTrackColor: Colors.black,
              thumbShape:
                  const RoundSliderThumbShape(enabledThumbRadius: 8.0),
              trackHeight: 4.0,
              inactiveTrackColor: Colors.grey[400],
              thumbColor: Colors.black,
              minThumbSeparation: 100.0,
              valueIndicatorTextStyle: const TextStyle(fontSize: 10.0),
              valueIndicatorColor: Colors.teal),
          child: Slider(
              min: 0.0,
              max: 100.0,
              value: count,
              onChanged: (value) {
                setState(() {
                  count = value;
                });
              }),
        ),
        const Icon(Icons.wb_sunny_outlined),
      ],
    );
  }
}
