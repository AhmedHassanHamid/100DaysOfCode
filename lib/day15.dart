import 'package:flutter/material.dart';

class Day15 extends StatefulWidget {
  Day15({Key? key}) : super(key: key);

  @override
  State<Day15> createState() => _Day15State();
}

class _Day15State extends State<Day15> {
  final ValueNotifier count = ValueNotifier(0);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
       body: SafeArea(
          child: Container(
        width: double.infinity,
        height: double.infinity,
        child: ValueListenableBuilder(
          
          valueListenable: count,
          
          builder: (context, value, child) {
            
            return Container(
              child: Stack(
                children: <Widget>[
                  Align(
                      alignment: Alignment.topLeft,
                      child: Text("topLeft : $value")),
                  Align(
                      alignment: Alignment.topCenter,
                      child: Text("topCenter : $value")),
                  Align(
                      alignment: Alignment.topRight,
                      child: Text("topRight : $value")),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Text("centerLeft : $value")),
                  Align(
                      alignment: Alignment.center,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                         
                          SizedBox(
                            height: 60 ,
                            width: 120 ,
                            child: ElevatedButton(
                              onPressed: () => count.value += 1,
                              child: Text("Click to Increment"),
                            ),
                          ),
                          SizedBox(height: 20,),
                          SizedBox(
                            height: 60 ,
                            width: 120 ,
                            child: ElevatedButton(
                              onPressed: () => count.value -= 1,
                              child: Text("Click to Decrement"),
                            ),
                          )
                        ],
                      )),
                  Align(
                      alignment: Alignment.centerRight,
                      child: Text("centerRight : $value")),
                  Align(
                      alignment: Alignment.bottomLeft,
                      child: Text("bottomLeft : $value")),
                  Align(
                      alignment: Alignment.bottomCenter,
                      child: Text("bottomCenter : $value")),
                  Align(
                      alignment: Alignment.bottomRight,
                      child: Text("bottomRight : $value")),
                ],
              ),
            );
          },
        ),
      )),
      // Center(
      //   child: SizedBox(
      //       width: 250, 
      //       height: 250, 
      //       child: ElevatedButton(
      //         onPressed: () {},
      //         child: Text("Click Me...."),
      //       )),
      // ),
    
    );
  }
}