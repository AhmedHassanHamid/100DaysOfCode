import 'package:flutter/material.dart';

class Day11 extends StatefulWidget {
// changed

  @override
  Day11State createState() => Day11State();
}

class Day11State extends State<Day11> {
  int _counter = 0;
  Offset _offset = Offset.zero; // changed

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Transform(  // Transform widget
      transform: Matrix4.identity()
        ..setEntry(3, 2, 0.001) // perspective
        ..rotateX(0.01 * _offset.dy) // changed
        ..rotateY(-0.01 * _offset.dx), // changed
      alignment: FractionalOffset.center,
      child: GestureDetector( // new
        onPanUpdate: (details) => setState(() => _offset += details.delta),
        onDoubleTap: () => setState(() => _offset = Offset.zero),
        child: _defaultApp(context),
      )
    );
  }

  _defaultApp(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('The Matrix 3D'), // changed
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }

}

































































































// import 'dart:math';

// import 'package:flutter/material.dart';

// class Day11 extends StatefulWidget {
//   const Day11({super.key});

//   @override
//   State<Day11> createState() => _Day11State();
// }

// class _Day11State extends State<Day11> {
//   double? point;
//   Color? _color;

//   @override
//   void initState() {
//     point = 0.0;
//     _color = Colors.green;
//     super.initState();
//   }
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(),
//        body: Center(
//           child: Column(
//         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: <Widget>[
//           Transform(
//             // ? What is Transform....
//             origin: Offset(50, 50),
//             /**
//            * ! [origin] is the property to set the point where the transformation to be perform....
//            * ! in my case I have seted to center of the container....
//            */
//             child: Container(
//               width: 100,
//               height: 100,
//               color: _color,
//             ),
//             /**
//            * ! [child] is the property where the real fixed element is present....
//            * ! I have the Container with 100x100 of green color....
//            */
//             transform: Matrix4.skew(
//                 point!, point!) // ? we are going to change the X and Y values....
//               ..translate(point! *
//                   100) // ? we can change the entire box with [translate]....
//               ..rotateY(point!) // ? we can [rotate] the along tha Y axis....
//               ..scale(point! +
//                   1), // ? we can also zoom in and out the box by [scale]....
//           ),
//           /**
//          * ! [transform] here comes the core....
//          * ! [transform] is the place where we are going to perfrom skew, translate, rotate, scale....
//          */
//           Slider(
//             min: 0.0,
//             max: pi,
//             activeColor: Colors.black,
//             inactiveColor: Colors.blue,
//             value: point!,
//             onChanged: (change) {
//               setState(() {
//                 print(change);
//                 if (change < pi / 2) {
//                   _color = Colors.green;
//                 } else {
//                   _color = Colors.red;
//                 }
//                 point = change;
//               });
//             },
//           )
//         ],
//       )),
//       // Center(
//       //   child: AbsorbPointer(
//       //     absorbing: true,
//       //     ignoringSemantics: false,
//       //     child: ListView.builder(
//       //       itemBuilder: ((context, index) {
//       //         return ListTile(
//       //           title:ElevatedButton(
//       //               // ? here the RaisedButton have click event....
//       //               child: Text("List item $index"),
//       //               onPressed: () {
//       //                 print("List item $index");
//       //               }),
//       //         );
//       //       }),
//       //     ),
//       //   ),
//       // ),
//     );
//   }
// }