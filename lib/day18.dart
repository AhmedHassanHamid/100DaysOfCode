import 'package:flutter/material.dart';

class Day18 extends StatefulWidget {
  Day18({Key? key}) : super(key: key);

  @override
  State<Day18> createState() => _Day18State();
}

class _Day18State extends State<Day18> {
  @override
  Widget build(BuildContext context) {
    var device = MediaQuery.of(context);
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: LayoutBuilder(
          builder: (context, constraints) => Container(
            width: constraints.maxWidth,
            height: constraints.maxHeight,
            child: Column(
              children: <Widget>[
                Flexible(
                  fit: FlexFit.loose,
                  flex: 4,
                  child: Container(
                    width: device.size.width * 1,
                    height: device.size.height * 1,
                    color: Colors.red[100],
                    child: Center(
                      child: Container(
                        width: device.size.width * 0.5,
                        height: device.size.height * 0.5,
                        color: Colors.yellow[100],
                        child: Center(
                          child: Container(
                            width: device.size.width * 0.25,
                            height: device.size.height * 0.25,
                            color: Colors.green[100],
                            child: Center(
                              child: Text(
                                  device.orientation == Orientation.portrait
                                      ? "Portrait"
                                      : "Landscape"),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Flexible(
                  flex: 3,
                  //fit: FlexFit.loose,

                  child: Container(
                    //height: 10,
                    color: Colors.purple,
                  ),
                ),
                Flexible(
                  flex: 2,
                  child: Container(
                    color: Colors.amber,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
