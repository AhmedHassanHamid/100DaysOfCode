import 'package:flutter/material.dart';

class Day26 extends StatefulWidget {
  const Day26({super.key});

  @override
  State<Day26> createState() => _Day26State();
}

class _Day26State extends State<Day26> {
  var _animOpacity = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
      child: AnimatedOpacity(
        opacity: _animOpacity ? 1.0 : 0.5,
        duration: Duration(seconds: 1),
        child: FractionallySizedBox(
          widthFactor: 0.7, 
          heightFactor: 0.5, 
          child: ElevatedButton(
            onPressed: () {
              setState(() {
              _animOpacity = !_animOpacity;
            });
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                content: Text(
                  "Button sized by 70% width and 50% height",
                  textAlign: TextAlign.center,
                ),
                duration: Duration(seconds: 1),
              ));
            },
            child: Text("This is Button"),
          ),
        ),
      ),
    ),
    );
      
    
  }
}
