import 'package:flutter/material.dart';

class Day41 extends StatefulWidget {
  const Day41({super.key});

  @override
  State<Day41> createState() => _Day41State();
}

class _Day41State extends State<Day41> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: InteractiveViewer(
          boundaryMargin: EdgeInsets.all(20.0),
          minScale: 0.5,
          maxScale: 1.6,
          child: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: <Color>[Colors.orange, Colors.red],
                stops: <double>[0.0, 1.0],
              ),
            ),
          ),
        ),
      )
    );
  }
}