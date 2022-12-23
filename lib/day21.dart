import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class Day21 extends StatefulWidget {
  Day21({Key? key}) : super(key: key);

  @override
  State<Day21> createState() => _Day20State();
}

class _Day20State extends State<Day21> {
  var _text = "Ahmed ";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
          child: Column(
        children: [
          Placeholder(
            fallbackHeight: 100,
            fallbackWidth: 200,
          ),
          SizedBox(height: 20,),
          RichText(
              maxLines: 2,
              overflow: TextOverflow.fade,
              softWrap: false,
              textAlign: TextAlign.end,
              textDirection: TextDirection.ltr,
              textScaleFactor: 1,
              text: TextSpan(
                style: TextStyle(color: Colors.black),
                children: [
                  TextSpan(
                      text: "Hello ",
                      style: TextStyle(
                          color: Colors.blue[900],
                          fontStyle: FontStyle.italic)),
                  TextSpan(
                      text: "World! ",
                      style: TextStyle(color: Colors.teal[900], fontSize: 25)),
                  TextSpan(text: "This is "),
                  TextSpan(
                    text: _text,
                    recognizer: new TapGestureRecognizer()
                      ..onTap = () {
                        setState(() {
                          _text = _text == "Ahmed " ? "Master " : "Ahmed ";
                        });
                      },
                    style: TextStyle(
                        decoration: TextDecoration.underline,
                        color: Colors.deepPurple[900],
                        fontSize: 30,
                        fontWeight: FontWeight.bold),
                  ),
                  TextSpan(
                      text: "\nRemember! Reality is an illusion, the universe is a hologram, buy gold, bye!",
                      style: TextStyle(
                          color: Colors.grey[500],
                          fontSize: 10,
                          fontWeight: FontWeight.bold)),
                ],
              )),
        ],
      )),
    );
  }
}
