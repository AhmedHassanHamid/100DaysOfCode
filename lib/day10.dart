import 'package:flutter/material.dart';

class Day10 extends StatefulWidget {
  const Day10({super.key});

  @override
  State<Day10> createState() => _Day10State();
}

class _Day10State extends State<Day10> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: LayoutBuilder(builder: (context, constraints) {
        if(constraints.maxWidth > 600) {
          return doubleBox();
        }else if (constraints.maxHeight < 350) {
          return multiBox();
        }else {
          return singleBox();
        }
      }),
    );
  }

   Widget singleBox() {
    return Center(
      child: Container(
        // ! creating the single container with 300x300....
        height: 300.0,
        width: 300.0,
        color: Colors.red,
      ),
    );
  }
  Widget doubleBox() {
    // ! creating the double container with 300x300....
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Container(
            height: 300.0,
            width: 300.0,
            color: Colors.red,
          ),
          Container(
            height: 300.0,
            width: 300.0,
            color: Colors.blue,
          ),
        ],
      ),
    );
  }

  Widget multiBox() {
    // ! creating the multi container with 90x90....
    double boxsize = 90;
    return Center(
      child: Wrap(
        runSpacing: 10,
        spacing: 10,
        children: <Widget>[
          Container(
            color: Colors.red,
            width: boxsize,
            height: boxsize,
          ),
          Container(
            color: Colors.blue,
            width: boxsize,
            height: boxsize,
          ),
          Container(
            color: Colors.green,
            width: boxsize,
            height: boxsize,
          ),
          Container(
            color: Colors.yellow,
            width: boxsize,
            height: boxsize,
          ),
          Container(
            color: Colors.amber,
            width: boxsize,
            height: boxsize,
          ),
          Container(
            color: Colors.purple,
            width: boxsize,
            height: boxsize,
          ),
          Container(
            color: Colors.pink,
            width: boxsize,
            height: boxsize,
          ),
          Container(
            color: Colors.black,
            width: boxsize,
            height: boxsize,
          ),
          Container(
            color: Colors.cyan,
            width: boxsize,
            height: boxsize,
          ),
        ],
      ),
    );
  }
}

