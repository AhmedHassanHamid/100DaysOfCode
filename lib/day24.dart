import 'package:flutter/material.dart';

class Day24 extends StatefulWidget {
  Day24({Key? key}) : super(key: key);

  @override
  State<Day24> createState() => _Day24State();
}

class _Day24State extends State<Day24> {
  List colorsList = [
    Colors.red[800],
    Colors.green[800],
    Colors.yellow[800],
    Colors.blue[800],
    Colors.deepOrange[800],
    Colors.deepPurple[800],
  ];

  var _index = 0;

  inc() {
    setState(() {
      if (_index < colorsList.length - 1) {
        _index++;
      }
    });
  }

  dec() {
    // ! decrement function....
    setState(() {
      if (_index > 0) {
        _index--;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
          child: Center(
        child: Semantics(
          label: "This is a Indexed Stack",
          button: false,
          checked: false,
          container: true,
          currentValueLength: 1,
          enabled: true,
          explicitChildNodes: false,
          focusable: false,
          focused: false,
          child: Stack(
            alignment: Alignment.center,
            children: <Widget>[
              IndexedStack(
                index: _index,
                sizing: StackFit.expand,
                alignment: Alignment.center,
                children: <Widget>[
                  for (Color color in colorsList)
                    Container(
                      width: 250,
                      height: 250,
                      color: color,
                      child: Center(
                          child: Text(
                        _index.toString(),
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      )),
                    ),
                ],
              ),
              Positioned(
                bottom: 1,
                left: 1,
                child: IconButton(
                    icon: Icon(Icons.keyboard_arrow_left),
                    color: Colors.white,
                    onPressed: () {
                      dec();
                    }),
              ),
              Positioned(
                bottom: 1,
                right: 1,
                child: IconButton(
                    icon: Icon(Icons.keyboard_arrow_right),
                    color: Colors.white,
                    onPressed: () {
                      inc();
                    }),
              ),
              Positioned(
                top: 20,
                child: Text('View code to know \ndetail about Semantics',style: TextStyle(color: Colors.white,fontSize: 20),),
              ),
            ],
          ),
        ),
      )),
    );
  }
}
