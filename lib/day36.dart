import 'package:flutter/material.dart';

class Day36 extends StatefulWidget {
  Day36({Key? key}) : super(key: key);

  @override
  State<Day36> createState() => _Day36State();
}

class _Day36State extends State<Day36> {
  String _textOutput = "Click Both Button";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            ClipPath(
              clipper: MyCustomClipper(),
              child: Container(
                width: 250,
                height: 250,
                color: Colors.black,
              ),
            ),
            Text(
              _textOutput,
              style: TextStyle(fontSize: 20),
            ),
            Container(
              child: Center(
                child: Builder(
                  builder: (BuildContext context) => ElevatedButton(
                    onPressed: () {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text("Hi there, This is Ahmed"),
                        ),
                      );
                      setState(() {
                        _textOutput =
                            "Succesfully Called SnackBar by Current Scaffold";
                      });
                    },
                    child: Text("Using Builder"),
                  ),
                ),
              ),
            ),
            Container(
              child: Center(
                child: ElevatedButton(
                  onPressed: () {
                    try {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text("Hi there, This is Ahmed"),
                        ),
                      );
                    } catch (e) {
                      setState(() {
                        _textOutput =
                            "Exception : Scaffold.of() called with a context that does not contain a Scaffold.";
                      });
                    }
                  },
                  child: Text("Without Using Builder"),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class MyCustomClipper extends CustomClipper<Path> {
  
  @override
  getClip(Size size) {
    
    double width = size.width; 
    double height = size.height; 
    Path path = new Path(); 

    Offset startPointOfQuadraticBezierCurve =
        Offset(width * 0.5, height * 0.2); 
    Offset controlPointOfQuadraticBezierCurve = Offset(
        width * 0.1, height * 0.5); 
    Offset endPointOfQuadraticBezierCurve =
        Offset(width * 0.7, height * 0.4); 

    path.moveTo(
        startPointOfQuadraticBezierCurve.dx,
        startPointOfQuadraticBezierCurve
            .dy); 
    path.quadraticBezierTo(
      controlPointOfQuadraticBezierCurve.dx,
      controlPointOfQuadraticBezierCurve.dy,
      endPointOfQuadraticBezierCurve.dx,
      endPointOfQuadraticBezierCurve.dy,
    ); 
    path.lineTo(width * 1.0,
        height * 0.0); 
    path.lineTo(width * 0.0,
        height * 0.0);

    return path;
  }

  @override
  bool shouldReclip(CustomClipper oldClipper) =>
      oldClipper != this; 
      }
