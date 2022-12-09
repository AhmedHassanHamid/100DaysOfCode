import 'package:flutter/material.dart';

class Day8 extends StatefulWidget {
  const Day8({super.key});

  @override
  State<Day8> createState() => _Day8State();
}

class _Day8State extends State<Day8> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: ClipRRect(
          borderRadius: BorderRadius.circular(50),
          clipBehavior: Clip.antiAlias,
          child: Container(
            height: 250,
            width: 250,
            color: Colors.orange,
            alignment: Alignment.center,
            child: Hero(
              tag: "laptop",
              child: GestureDetector(
                onTap: () => Navigator.push
                  (context,
                    MaterialPageRoute(
                    builder: (context) => NextPage(),
                  ))
                ,
                child: Icon(
                  Icons.laptop,
                  size: 100,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class NextPage extends StatefulWidget {
  @override
  _NextPageState createState() => _NextPageState();
}

class _NextPageState extends State<NextPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: InkWell(
        onTap: () {
          Navigator.pop(context);
        },
        child: Container(
          child: Center(
            child: Hero(
              tag:
                  "laptop", // ! we have to main the same identifier [tag] here so that the animation is cool....
              child: Icon(
                Icons.laptop,
                size: 200.0,
              ),
            ),
          ),
        ),
      ),
    );
  }
}




























































































































































































// inherited_widget
// import 'package:flutter/material.dart';


// class InheritedColorWidget extends StatefulWidget {
//   /// ! create the simple StatefulWidget which is going to be the InheritedWidget....

//   /// ! and going to be the Top|Root of Widget tree....

//   InheritedColorWidget({Key? key, required this.child}) : super(key: key);

//   final Widget child; // ? All the child are comes in the child....

//   @override
//   InheritedColorWidgetState createState() => InheritedColorWidgetState();

//   static InheritedColorWidgetState of(BuildContext context) =>
//       (context.dependOnInheritedWidgetOfExactType<InheritedColorData>())!.data;
//   /**
//    * ! [of] is used to get the Instance of the [InheritedColorData] for the help of [InheritedColorWidget]....
//    */
// }

// class InheritedColorWidgetState extends State<InheritedColorWidget> {
//   Color color = Colors
//       .red; // ? This Color data is going to be share between the child Widgets....

//   void changeColor() {
//     // ! a simple toggle function for play with color....
//     if (color == Colors.red) {
//       setState(() {
//         color = Colors.green;
//       });
//     } else {
//       setState(() {
//         color = Colors.red;
//       });
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return new InheritedColorData(child: widget.child, data: this);
//   }
// }

// class InheritedColorData extends InheritedWidget {
//   // ? Here comes the [InheritedWidget] oops [InheritedData]
//   // ? What is InheritedWidget....
//   /// ! InheritedWidget is the very important class in the Flutter...

//   /// ! This act as the root top Widget of all the child widget...

//   /// ! and provide the [data] for all the below child widget....

//   /// ! Actually InheritedWidget not the normal UI Widget it have simple save and share the data....

//   InheritedColorData({Key? key, required Widget child, required this.data})
//       : super(key: key, child: child);

//   final InheritedColorWidgetState
//       data; // ! this is the instance of InheritedColorWidgetState going to be share color property....

//   @override
//   bool updateShouldNotify(InheritedColorData oldWidget) {
//     return true;
//   }
// }

// class Day8 extends StatefulWidget {

//   @override
//   _Day15InheritedWidgetState createState() => _Day15InheritedWidgetState();
// }

// class _Day15InheritedWidgetState extends State<Day8> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: InheritedColorWidget(
//         // ! here we added the InheritedWidget....
//         child: Container(
//           child:
//               NewChildWidget(), // ! we are going to create the nested ChildWidget....
//         ),
//       ),
//       appBar: AppBar(
        
//       ),
//     );
//   }
// }

// class NewChildWidget extends StatelessWidget {
//   // ! NewChild....
  
//   @override
//   Widget build(BuildContext context) {
//     final InheritedColorWidgetState state = InheritedColorWidget.of(
//         context); // ! here we use the [of] function from the InheritedColorWidget to get the InheritedColorData....
//     return GestureDetector(
//       onTap: () {
//         state
//             .changeColor(); // ! on tap the InheritedColorWidgetState.changeColor() will call....
//       },
//       child: Container(
//         width: MediaQuery.of(context).size.width,
//         height: MediaQuery.of(context).size.height,
//         color: state
//             .color, // ! the set state of the InheritedColorWidgetState will change the state of NewChildWidget too....
//       ),
//     );
//   }
// }