import 'package:flutter/material.dart';

class Day25 extends StatefulWidget {
  Day25({Key? key}) : super(key: key);

  @override
  State<Day25> createState() => _Day25State();
}

class _Day25State extends State<Day25> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Stack(
          fit: StackFit.loose,
          alignment: Alignment.center,
          children: <Widget>[
            ConstrainedBox(
              constraints: BoxConstraints.expand(),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    "Click",
                    textAlign: TextAlign.left,
                  ),
                ),
              ),
            ),
            Container(
              width: 250,
              height: 250,
              color: Colors.red,
            ),
            Container(
              width: 200,
              height: 200,
              color: Colors.green,
            ),
            Container(
              width: 150,
              height: 150,
              color: Colors.yellow,
            ),
            Container(
              width: 100,
              height: 100,
              color: Colors.blue,
            ),
            Container(
              width: 50,
              height: 50,
              color: Colors.black,
            ),
          ],
        ),
      ),
    );
  }
}
