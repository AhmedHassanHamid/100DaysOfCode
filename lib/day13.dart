import 'dart:math';

import 'package:flutter/material.dart';

class Day13 extends StatefulWidget {
  Day13({Key? key}) : super(key: key);

  @override
  State<Day13> createState() => _Day13State();
}

class _Day13State extends State<Day13> with SingleTickerProviderStateMixin {
  AnimationController? _controller;
  Animation? _rotationAnim;

  @override
  void initState() {
    super.initState();

    _controller =
        AnimationController(vsync: this, duration: Duration(seconds: 5))
          ..repeat(); // the contorller....
    _rotationAnim = Tween(begin: 0.0, end: 2 * pi)
        .animate(_controller!); //  the tween animation....
  }

  @override
  void dispose() {
    super.dispose();
    _controller!.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double width = 250;
    double height = 250;
    return Scaffold(
      appBar: AppBar(),
      body: AnimatedBuilder(
        animation: _controller!,
        builder: (context, child) => Transform.rotate(
          angle: _rotationAnim!.value,
          child: //  Center(
              Center(
                child: Container(
            width: width,
            height: height,
            color: Colors.black,
            child: Stack(
                children: <Widget>[
                  Positioned(
                    top: height / 2,
                    left: width / 2,
                    right: 0,
                    bottom: 0,
                    child: Container(
                      color: Colors.amber,
                      child: Text("This is mid of top and left"),
                    ),
                  ),
                  Positioned(
                    top: 0,
                    left: 0,
                    right: width / 2,
                    bottom: height / 2,
                    child: Container(
                      color: Colors.blue,
                      child: Text("This is start of top and left"),
                    ),
                  ),
                ],
            ),
          ),
              ),
        ),
      ),
    );
  }
}
