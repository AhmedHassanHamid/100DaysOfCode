import 'package:flutter/material.dart';

class Day3 extends StatefulWidget {
  const Day3({super.key});

  @override
  State<Day3> createState() => _Day3State();
}

class _Day3State extends State<Day3> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation _animation;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller =
        AnimationController(vsync: this, duration: Duration(seconds: 1));
    _animation = Tween(begin: 0.0, end: 1.0).animate(_controller);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: GestureDetector(
          onTap: () {
            _controller.forward();
          },
          onDoubleTap: () {
            _controller.reverse();
          },
          onLongPress: () {
            _controller.repeat();
          },
          child: Center(
            child: Stack(
              alignment: AlignmentDirectional.center,
              children: <Widget>[
                FadeTransition(
                  opacity: Tween(begin: 0.0, end: 1.0).animate(_controller),
                  child: Container(
                    width: 250,
                    height: 250,
                    color: Colors.deepOrange,
                  ),
                ),
                Text(
                  "Tap to forward\nDoubleTap to backward\nLongpress to repeat",
                  style: TextStyle(fontSize: 20, color: Colors.deepPurple),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
