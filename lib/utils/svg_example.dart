import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SvgExample extends StatefulWidget {
  const SvgExample({Key? key}) : super(key: key);

  @override
  _SvgExampleState createState() => _SvgExampleState();
}

class _SvgExampleState extends State<SvgExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Svg picture example"),
        elevation: 0.0,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              color: Colors.red,
              child: Column(
                children: [
                  const Text("This image was uploaded via local memory"),
                  SvgPicture.asset("assets/icons/Notification.svg"),
                ],
              ),
            ),
            const SizedBox(
              width: double.infinity,
              height: 50,
            ),
            Container(
              color: Colors.yellow,
              child: Column(
                children: [
                  const Text("This image was uploaded via global database"),
                  SvgPicture.network(
                    "https://dev.w3.org/SVG/tools/svgweb/samples/svg-files/Steps.svg",
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
