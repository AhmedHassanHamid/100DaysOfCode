import 'package:flutter/material.dart';

class Day9 extends StatefulWidget {
  Day9({Key? key}) : super(key: key);

  @override
  State<Day9> createState() => _Day9State();
}

class _Day9State extends State<Day9> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            "Click and hold on the Views....",
            style: TextStyle(fontSize: 25),
          ),
          SizedBox(
            height: 50,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Expanded(
                child: Tooltip(
                  textStyle: TextStyle(
                    color: Colors.red,
                    fontSize: 15,
                    backgroundColor: Colors.green,
                  ),
                  message: "This is tooltip from Container",
                  child: Container(
                    color: Colors.amber,
                    width: 100,
                    height: 100,
                  ),
                ),
                flex: 1,
              ),
              Expanded(
                child: IconButton(
                  icon: Icon(Icons.add),
                  onPressed: () {},
                  tooltip: "This is tooltip from IconButton", // ? why here ....
                ),
                flex: 1,
              ),
              Expanded(
                child: Tooltip(
                  waitDuration: Duration(
                      seconds:
                          1), // ! we can specify the wait time for the hover....
                  showDuration: Duration(
                      seconds:
                          5), // ! and we can also specify the show time for the tooltip....
                  message: "This is tooltip from Image",
                  child: Image.asset("images/coffee.jpg"),
                ),
                flex: 1,
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Center(
            child: Container(
              color: Colors.amber,
              width: double.infinity,
              height: 100,
              child: FittedBox(
                fit: BoxFit.fill,
                child: Image.asset("images/coffee.jpg"),
              ),
            ),
          ),
          CustomPaint(
            painter: MyPainter(),
          ),
        ],
      )),
    );
  }
}

class MyPainter extends CustomPainter {
  Paint p = Paint();

  @override
  void paint(Canvas canvas, Size size) {
    p..color = Colors.red;
    p..strokeWidth = 5;
    canvas.drawLine(Offset(250, 225), Offset(size.width, size.height), p);
    p..color = Colors.red;
    p..strokeWidth = 5;
    canvas.drawLine(Offset(-250, 225), Offset(size.width, size.height), p);
    p..color = Colors.red;
    p..strokeWidth = 5;
    canvas.drawLine(Offset(0, 225), Offset(size.width, size.height), p);

    // p..color = Colors.green;
    // p..style = PaintingStyle.stroke;
    // canvas.drawCircle(Offset(size.width / 2, size.height / 2), 150,
    //     p);

    // Path path =
    //     Path();
    // path.moveTo(size.width - 250, size.height - 100);
    // // custom rectangle....
    // path.lineTo(size.width - 100, size.height - 100);
    // path.lineTo(size.width - 100, size.height - 250);
    // path.lineTo(size.width - 250, size.height - 250);
    // path.lineTo(size.width - 250, size.height - 100);

    // p..color = Colors.amber;
    // p..invertColors = true;
    // p..style = PaintingStyle.fill;
    // canvas.drawPath(path, p);
  }

  @override
  bool shouldRepaint(MyPainter oldDelegate) {
    return true;
  }
}
