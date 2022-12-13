import 'dart:ui';

import 'package:flutter/material.dart';

class Day12 extends StatefulWidget {
  Day12({Key? key}) : super(key: key);

  @override
  State<Day12> createState() => _Day12State();
}

class _Day12State extends State<Day12> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Text('lol' *
              10000), 
          Align(
            alignment: Alignment(-1, 0.01),
            child: BackdropFilter(
             
              filter: ImageFilter.blur(
                sigmaX: 2.0,
                sigmaY: 2.0,
                
              ),
              child: Container(
                // ? An empty container for effect the blur....
                child: Text("Area Cover By Container is actually blur",style: TextStyle(fontSize: 20),),
              ),
            ),
          ),
        ],
      ),
    );
  }
}