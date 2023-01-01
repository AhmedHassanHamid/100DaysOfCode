import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Day29 extends StatefulWidget {
  Day29({Key? key}) : super(key: key);

  @override
  State<Day29> createState() => _Day29State();
}

class _Day29State extends State<Day29> {
  bool _toggle = true;
  _setState() {
    print(_toggle);
    setState(() {
      _toggle = !_toggle;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: GestureDetector(
              onTap: () => _setState(),
              child: AnimatedCrossFade(
                firstChild: Stack(
                  alignment: Alignment.center,
                  children: <Widget>[
                    SizedBox(
                      child: Image.asset(
                        "images/logo.gif",
                        fit: BoxFit.fill,
                      ),
                      width: 250,
                      height: 250,
                    ),
                    Text(
                      "Click Here",
                      style: TextStyle(color: Colors.black, fontSize: 20),
                    ),
                  ],
                ),
                secondChild: Stack(
                  alignment: Alignment.center,
                  children: <Widget>[
                    SizedBox(
                      child: Image.asset(
                        "images/coffee.jpg",
                        fit: BoxFit.fill,
                      ),
                      width: 250,
                      height: 250,
                    ),
                    Text(
                      "Click Here",
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  ],
                ),
                crossFadeState: _toggle
                    ? CrossFadeState.showFirst
                    : CrossFadeState.showSecond,
                duration: Duration(seconds: 1),
                reverseDuration: Duration(seconds: 2),
                alignment: Alignment.center,
                firstCurve: Curves.easeIn,
                secondCurve: Curves.bounceIn,
              ),
            ),
          ),
          TextButton(
            onPressed: () => showDialog(
                barrierDismissible: false,
                context: context,
                builder: (context) => AlertDialog(
                      title: Text('AlertDialog Title'),
                      content: Text('AlertDialog description'),
                      actions: <Widget>[
                        TextButton(
                          onPressed: () => Navigator.pop(context, 'Cancel'),
                          child: const Text('Cancel'),
                        ),
                        TextButton(
                          onPressed: () => Navigator.pop(context, 'OK'),
                          child: const Text('OK'),
                        ),
                      ],
                    )),
            child: Text('Show Dialog'),
          ),
        ],
      )),
    );
  }
}
