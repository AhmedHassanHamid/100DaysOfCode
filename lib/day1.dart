import 'package:flutter/material.dart';

class Day1 extends StatefulWidget {
  const Day1({Key? key}) : super(key: key);

  @override
  State<Day1> createState() => _Day1State();
}

class _Day1State extends State<Day1> {
  var isExpanded = true;
  var isRow = true;
  var isClick = true;
  var colorUp = true;
  var colorDown = true;
  var widgetc = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        // top: true,
        // bottom: true,
        // left: true,
        // right: true,
        // maintainBottomViewPadding: true,
        //minimum: EdgeInsets.all(50),
        child: Container(
            child: Column(
          children: [
            Expanded(
                flex: 10,
                child: AnimatedContainer(
                  duration: Duration(milliseconds: 500),
                  curve: Curves.fastOutSlowIn,
                  color: colorUp ? Colors.red : Colors.green,
                )),
            Expanded(
                flex: 30,
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      isClick = !isClick;
                      isExpanded = !isExpanded;
                      colorUp = !colorUp;
                      colorDown = !colorDown;
                    });
                  },
                  child: Center(
                    child: AnimatedContainer(
                      duration: Duration(milliseconds: 500),
                      curve: Curves.fastOutSlowIn,
                      width: isClick ? 200 : MediaQuery.of(context).size.width,
                      height:
                          isClick ? 100 : MediaQuery.of(context).size.height,
                      color: isClick ? Colors.black : Colors.red,
                      child: isClick
                          ? Center(
                              child: Text(
                                "Off",
                                style: TextStyle(
                                  fontSize: 80,
                                  color: Colors.white,
                                ),
                              ),
                            )
                          : Center(
                              child: Text(
                                "on",
                                style: TextStyle(
                                  fontSize: 80,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                    ),
                  ),
                )),
            Expanded(
              flex: 60,
              child: widgetc
                  ? InkWell(
                    onTap: () {
                      setState(() {
                        widgetc = !widgetc;
                      });
                    },
                    child: AnimatedContainer(
                        duration: Duration(milliseconds: 500),
                        color: colorDown ? Colors.yellow : Colors.black,
                        
                      ),
                  )
                  : SingleChildScrollView(
                    child: Wrap(
                      spacing: 45,
                      runSpacing: 20,
                        children: [
                          Container(
                            width: 100,
                            height: 100,
                            color: colorDown ? Colors.red.withRed(100) : Colors.grey,
                          ),
                          Container(
                            width: 100,
                            height: 100,
                            color: colorDown ? Colors.green.withRed(100) : Colors.green,
                          ),
                          Container(
                            width: 100,
                            height: 100,
                            color: colorDown ? Colors.yellow.withRed(100) : Colors.yellow,
                          ),
                          Container(
                            width: 100,
                            height: 100,
                            color: colorDown ? Colors.blue.withRed(100) : Colors.blue,
                          ),
                          Container(
                            width: 100,
                            height: 100,
                            color: colorDown ? Colors.orange.withRed(100) : Colors.orange,
                          ),
                          Container(
                            width: 100,
                            height: 100,
                            color: colorDown ? Colors.pink.withRed(100) : Colors.pink,
                          ),
                          Container(
                            width: 100,
                            height: 100,
                            color: colorDown ? Colors.lime.withRed(100) : Colors.lime,
                          ),
                          Container(
                            width: 100,
                            height: 100,
                            color: colorDown ? Colors.indigo.withRed(100) : Colors.indigo,
                          ),
                          Container(
                            width: 100,
                            height: 100,
                            color: colorDown ? Colors.purple.withRed(100) : Colors.purple,
                          ),
                          InkWell(
                            onTap: () {
                              setState(() {
                                widgetc = !widgetc;
                              });
                            },
                            child: Container(
                              width: 100,
                              height: 100,
                              color: colorDown ? Colors.black.withRed(100) : Colors.black,
                            ),
                          ),
                        ],
                      ),
                  ),
            ),
          ],
        )),
      ),
    );
  }
}
