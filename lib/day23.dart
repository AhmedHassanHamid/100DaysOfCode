import 'package:flutter/material.dart';

class Day23 extends StatefulWidget {
  Day23({Key? key}) : super(key: key);

  @override
  State<Day23> createState() => _Day23State();
}

class _Day23State extends State<Day23> {
  var _islong = false;
  bool _anim = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Expanded(
            child: GestureDetector(
              onTap: () {
                setState(() {
                  _anim = !_anim;
                });
              },
              child: SafeArea(
                child: Center(
                  child: AnimatedPadding(
                    padding: EdgeInsets.all(_anim ? 125 : 0.0),
                    duration: Duration(milliseconds: 2000),
                    curve: Curves.elasticInOut,
                    child: Container(
                      width: double.infinity,
                      height: double.infinity,
                      color: Colors.deepOrange,
                      child: Center(
                          child: Text(
                        "Click",
                        style: TextStyle(color: Colors.white, fontSize: 25),
                      )),
                    ),
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: GestureDetector(
              onTap: () => setState(() {
                _islong = !_islong;
              }),
              child: Center(
                child: Stack(
                  alignment: Alignment.center,
                  children: <Widget>[
                    AnimatedPositioned(
                      width: 200,
                      height: _islong ? 200 : 100,
                      curve: Curves.elasticOut,
                      onEnd: () => print("Animation Done"),
                      child: Container(
                        child: Center(
                          child: Text(
                            "Click",
                            style: TextStyle(color: Colors.white, fontSize: 25),
                          ),
                        ),
                        color: Colors.deepPurple,
                      ),
                      duration: Duration(seconds: 2),
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
