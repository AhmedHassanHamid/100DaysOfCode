import 'dart:async';

import 'package:flutter/material.dart';

class Day7 extends StatefulWidget {
  const Day7({super.key});

  @override
  State<Day7> createState() => _Day7State();
}

class _Day7State extends State<Day7> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: Container(
          color: Colors.white,
          child: Center(
            child: Column(
              children: [
                FadeInImage.assetNetwork(
                  placeholder: 'images/logo.gif',
                  image:
                      'https://ctl.s6img.com/society6/img/CY-f61AQhqaiP-V8FvHMnxB7pac/w_700/prints/~artwork/s6-original-art-uploads/society6/uploads/misc/163bf4428ec744778fc04bc7eedf7465/~~/smiley-face-cute-simple-smiling-happy-face-prints.jpg',
                  fadeInDuration: Duration(seconds: 1),
                  fadeOutDuration: Duration(seconds: 1),
                  fadeInCurve: Curves.bounceIn,
                  fadeOutCurve: Curves.bounceOut,
                  width: 300,
                  height: 300,
                  fit: BoxFit.fill,
                ),
                SizedBox(
                  height: 20,
                ),
                StreamBuilder(
                    stream: NumberCounter().stream,
                    initialData: null,
                    builder: (context, snapshot) {
                      return Container(
                        child: _uiText(snapshot),
                      );
                    }),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

_uiText(AsyncSnapshot snapshot) {
  switch (snapshot.connectionState) {
    case ConnectionState.none:
      return Text(
        "ConnectionState.none Current Data is ${snapshot.data}",
        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
      );
      break;
    case ConnectionState.waiting:
      return Text(
        "ConnectionState.waiting Current Data is ${snapshot.data}",
        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
      );
      break;
    case ConnectionState.active:
      return Text(
        "ConnectionState.active Current Data is ${snapshot.data}",
        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
      );
      break;
    case ConnectionState.done:
      return Text(
        "ConnectionState.done Current Data is ${snapshot.data}",
        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
      );
      break;
  }
}

class NumberCounter {
  var _counter = 0;

  final _controller = StreamController<int>();

  NumberCounter() {
    Timer.periodic(Duration(seconds: 1), (t) {
      _controller.sink.add(_counter);
      if (_counter < 5) {
        _counter++;
      } else {
        _controller.close();
      }
    });
  }
  Stream<int> get stream => _controller.stream;
}
