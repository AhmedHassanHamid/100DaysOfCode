import 'package:flutter/material.dart';

class Day34 extends StatefulWidget {
  const Day34({super.key});

  @override
  State<Day34> createState() => _Day34State();
}

class _Day34State extends State<Day34> {
  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      key: scaffoldKey,
      body: Column(
        children: [
          Container(
          height:600,
            child: ListWheelScrollView(
              itemExtent: 100, 
              diameterRatio: 2,
              offAxisFraction: 0.5, 
              useMagnifier: true,
              magnification: 1.5, 
              onSelectedItemChanged: (value) => print(
                  "Current Tile : $value"), 
              overAndUnderCenterOpacity:
                  0.5, 
              children: [
              
                Container(
                  height: 100,
                  color: Colors.red,
                ),
                Container(
                  height: 100,
                  color: Colors.green,
                ),
                Container(
                  height: 100,
                  color: Colors.blue,
                ),
                Container(
                  height: 100,
                  color: Colors.black,
                ),
                Container(
                  height: 100,
                  color: Colors.amber,
                ),
                Container(
                  height: 100,
                  color: Colors.orange,
                ),
                Container(
                  height: 100,
                  color: Colors.yellow,
                ),
                Container(
                  height: 100,
                  color: Colors.deepPurple,
                ),
                Container(
                  height: 100,
                  color: Colors.deepOrange,
                ),
                Container(
                  height: 100,
                  color: Colors.lime,
                ),
              ],
            ),
          ),
          ElevatedButton(
          child: Text("show SnackBar!"),
          onPressed: () => ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Image.asset("images/coffee.jpg"),
              behavior: SnackBarBehavior.fixed,
              duration: Duration(seconds: 2),
              elevation: 10,
              onVisible: () => print("SnackBar Visible"),
              backgroundColor: Colors.black38,
              action: SnackBarAction(
                label: "Ok",
                textColor: Colors.white,
                onPressed: () {
                  
                },
              ),
            ),
          ),
        ),
        ],
      ),
      
    );
  }
}
