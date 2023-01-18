import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:device_info_plus/device_info_plus.dart';

class Day45 extends StatefulWidget {
  const Day45({super.key});

  @override
  State<Day45> createState() => _Day45State();
}

class _Day45State extends State<Day45> {
  DeviceInfoPlugin deviceInfo = DeviceInfoPlugin();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: PhysicalModel(
              color: Colors.black,
              shadowColor: Colors.red,
              //shape: BoxShape.circle,
              elevation: 8.0,
              child: Container(
                height: 200,
                width: 200,
                color: Colors.blue,
              ),
            ),
          ),
          SizedBox(height: 50,),
          Container(
            child: ImageFiltered(
              imageFilter: ImageFilter.blur(sigmaX: 7),
              child: Image.asset('images/coffee.jpg')),
          ),
        ],
      ),
    );
  }
}
