import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Day38 extends StatefulWidget {
  Day38({Key? key}) : super(key: key);

  @override
  State<Day38> createState() => _Day38State();
}

class _Day38State extends State<Day38> {
    bool loader = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
       body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Center(
        // ! Simpley a clipper to clip oval shape....
        child: ClipOval(child: Image.asset('images/coffee.jpg')),),
            CupertinoActivityIndicator(
              radius: 50,
              animating: loader,
            ),
            ElevatedButton(
             
              onPressed: () {
                setState(() {
                  loader = !loader;
                });
              },
              child: Text(
                loader ? "Stop Loading" : "Start Loading",
                style: TextStyle(color: Colors.white),
              ),
            )
          ],
        ),
      ),
    );
  }
}