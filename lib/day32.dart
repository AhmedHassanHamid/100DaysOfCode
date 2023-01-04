import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Day32 extends StatefulWidget {
  Day32({Key? key}) : super(key: key);

  @override
  State<Day32> createState() => _Day32State();
}

class _Day32State extends State<Day32> {
  String _selectedText = "";
  bool repeat = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: TweenAnimationBuilder(
              tween: repeat
                  ? ColorTween(begin: Colors.red, end: Colors.green)
                  : ColorTween(begin: Colors.green, end: Colors.red),
              duration: Duration(seconds: 3),
              curve: Curves.bounceInOut,
              builder: (context, value, child) => Container(
                
               
                child: Image.asset(
                        "images/coffee.jpg",
                        fit: BoxFit.fill,
                        color: value,
                        colorBlendMode: BlendMode.colorBurn,
                      ), // ! get im,
              ),
              onEnd: () {
                print("Tween Animation Ends....");
                setState(() {
                  repeat = !repeat;
                });
              },
            ),
          ),
          Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            _selectedText,
            style: TextStyle(fontSize: 30, color: Colors.pink),
          ),
          ElevatedButton(
            child: Text("Click Here!"),
            onPressed: () {
              showCupertinoModalPopup(
                context: context,
                builder: (context) => CupertinoActionSheet(
                  title: Text("This is Child List"),
                  message: Text("Please select the name"),
                  actions: <Widget>[
                    CupertinoActionSheetAction(
                      child: Text("Ahmed"),
                      onPressed: () {
                        Navigator.pop(context);
                        setState(() {
                          _selectedText = "Ahmed";
                        });
                      },
                    ),
                    CupertinoActionSheetAction(
                      isDefaultAction: true,
                      child: Text("mohamed"),
                      onPressed: () {
                        Navigator.pop(context);
                        setState(() {
                          _selectedText = "mohamed";
                        });
                      },
                    ),
                  ],
                  cancelButton: CupertinoActionSheetAction(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text("Cancel"),
                  ),
                ),
              );
            },
          ),
        ],
      )),
        ],
      ),
    );
  }
}
