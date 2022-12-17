import 'package:flutter/material.dart';

class Day16 extends StatefulWidget {
  Day16({Key? key}) : super(key: key);

  @override
  State<Day16> createState() => _Day16State();
}

class _Day16State extends State<Day16> {
  String acceptData = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: LayoutBuilder(
          builder: (context, constraints) {
            return Column(
              children: <Widget>[
                Container(
                  color: Colors.red,
                  width: constraints.maxWidth,
                  height: constraints.maxHeight / 2,
                  child: Container(
                    margin: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.black,
                        width: 1,
                      ),
                    ),
                    child:  const Center(
                      child:const Draggable<String>(
                        
                        data:
                            "Logo", // ? [data] the property where we pass the data to track the drag element....
                        child:  FlutterLogo(
                          
                          size: 100,
                        ),
                        childWhenDragging: FlutterLogo(
                         
                          size: 50,
                        ),
                        feedback: Opacity(
                          /**
                           * ! [feedback] is the drag element....
                           */
                          opacity: 0.5,
                          child: FlutterLogo(
                            size: 100,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  color: Colors.green,
                  width: constraints.maxWidth,
                  height: constraints.maxHeight / 2,
                  child: DragTarget<String>(
                    onAccept: (data) {
                      
                      acceptData = "accepted";
                    },
                    onLeave: (data) {
                      
                      acceptData = "leave";
                    },
                    onWillAccept: (data) {
                   
                      print(data);
                      acceptData = "willaccepted";
                      return true;
                    },
                    builder: (context, candidateData, rejectedData) {
                      
                      return Container(
                        margin: EdgeInsets.all(10),
                        width: 100,
                        height: 100,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.black,
                            width: 1,
                          ),
                        ),
                        child: acceptData == "accepted"
                            ? Center(
                                child: FlutterLogo(
                                  size: 100,
                                ),
                              )
                            : acceptData == "willaccepted"
                                ? Opacity(
                                    opacity: 0.3,
                                    child: Center(
                                      child: FlutterLogo(
                                        size: 100,
                                      ),
                                    ),
                                  )
                                : acceptData == "leave"
                                    ? Center(
                                        child: Container(
                                          child: Text("Out of drag Area"),
                                        ),
                                      )
                                    : Center(
                                        child: Container(
                                          child: Text("Drag in to green"),
                                        ),
                                      ),
                      );
                    },
                  ),
                ),
              ],
            );
          },
        ),
      ),
    
    );
  }
}