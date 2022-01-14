import 'package:flutter/material.dart';
import 'package:news_app/screens/dashboard/components/menu_items.dart';

import 'drawer_items.dart';

class DrawerPage extends StatefulWidget {
  const DrawerPage({required this.child, Key? key}) : super(key: key);
  final Widget child;
  static _DrawerPageState? of(BuildContext context) =>
      context.findAncestorStateOfType<_DrawerPageState>();

  @override
  _DrawerPageState createState() => _DrawerPageState();
}

class _DrawerPageState extends State<DrawerPage> with TickerProviderStateMixin {
  late AnimationController _controller;
  static Duration duration = Duration(milliseconds: 300);
  @override
  void initState() {
    _controller =
        AnimationController(vsync: this, duration: _DrawerPageState.duration);
    super.initState();
  }

  void close() => _controller.reverse();
  void open() => _controller.forward();
  void toggle() {
    if (_controller.isCompleted) {
      close();
    } else {
      open();
    }
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double maxSlide = 290.9;
    return GestureDetector(
        child: AnimatedBuilder(
            animation: _controller,
            builder: (BuildContext context, _) {
              double animationVal = _controller.value;
              double translateVal = animationVal * maxSlide;
              double scaleVal = 1 - (animationVal * 0.3);
              return Stack(
                children: [
                  const CustomDrawer(),
                  Transform(
                    alignment: Alignment.centerLeft,
                    transform: Matrix4.identity()
                      ..translate(translateVal)
                      ..scale(scaleVal),
                    child: GestureDetector(
                        onTap: () {
                          if (_controller.isCompleted) {
                            close();
                          }
                        },
                        child: widget.child),
                  )
                ],
              );
            }));
  }
}
