import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:news_app/main_navigation.dart';
import 'components/logo_widget.dart';
import 'components/my_paniter.dart';
import 'components/oboaring_widget.dart';

class OnbaringPage extends StatefulWidget {
  const OnbaringPage({Key? key}) : super(key: key);

  @override
  _OnbaringPageState createState() => _OnbaringPageState();
}

class _OnbaringPageState extends State<OnbaringPage>
    with TickerProviderStateMixin {
  double? percentage = 0.0;
  double? newPercentage = 10.0;
  AnimationController? percentageAnimationController;
  int currentIndex = 0;
  PageController? _controller;
  @override
  void initState() {
    super.initState();
    _controller = PageController(initialPage: 0);
    setState(() {
      percentage = newPercentage;
      newPercentage = newPercentage! + 10;
    });
    percentageAnimationController = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 1000))
      ..addListener(() {
        setState(() {
          percentage = lerpDouble(
              percentage, newPercentage, percentageAnimationController!.value);
        });
      });
  }

  @override
  void dispose() {
    _controller!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            logoWidget(context),
            const SizedBox(
              height: 30,
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.6,
              child: PageView.builder(
                physics: const NeverScrollableScrollPhysics(),
                controller: _controller,
                onPageChanged: (int index) {
                  setState(() {
                    currentIndex = index;
                  });
                },
                itemCount: onboaringWigdget(context).length,
                itemBuilder: (context, index) {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      onboaringWigdget(context)[index],
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          indicator(index == 0 ? true : false),
                          const SizedBox(
                            width: 5,
                          ),
                          indicator(index == 1 ? true : false),
                          const SizedBox(
                            width: 5,
                          ),
                          indicator(index == 2 ? true : false),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      titleSting(context)[index],
                    ],
                  );
                },
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              height: 100.0,
              width: 150.0,
              child: CustomPaint(
                foregroundPainter: MyPainter(
                    lineColor: Colors.white,
                    completeColor: const Color.fromRGBO(18, 18, 18, 1),
                    completePercent: percentage,
                    width: 6.0),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: RaisedButton(
                    color: const Color.fromRGBO(18, 18, 18, 1),
                    shape: const CircleBorder(),
                    child: const Icon(
                      Icons.arrow_right_alt_sharp,
                      color: Colors.white,
                      size: 40.0,
                    ),
                    onPressed: () {
                      setState(
                        () {
                          if (currentIndex < (3 - 1)) {
                            percentage = newPercentage;
                            newPercentage = newPercentage! + 10;
                            _controller!.animateToPage(
                              currentIndex + 1,
                              duration: const Duration(milliseconds: 300),
                              curve: Curves.easeInOut,
                            );
                          } else {
                            Navigator.of(context)
                                .popAndPushNamed(MainNavigationRouteNames.auth);
                          }
                        },
                      );
                    },
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
