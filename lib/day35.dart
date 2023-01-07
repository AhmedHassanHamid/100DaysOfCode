import 'package:flutter/material.dart';

class Day35 extends StatefulWidget {
  const Day35({super.key});

  @override
  State<Day35> createState() => _Day35State();
}

class _Day35State extends State<Day35> {
  String message = 'Please Scroll the list to Usage';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: Column(
          children: <Widget>[
            ShaderMask(
              shaderCallback: (bounds) => RadialGradient(
                colors: [
                  Colors.yellow,
                  Colors.orange,
                  Colors.red,
                  Colors.red,
                ],
                radius: 5.0,
              ).createShader(bounds),
              child: Container(
                color: Colors.white,
                height: 50.0,
                child: Center(
                  child: Text(message),
                ),
              ),
            ),
            Expanded(
              child: NotificationListener<ScrollNotification>(
                onNotification: (ScrollNotification notification) {
                  print("$notification");
                  if (notification is ScrollStartNotification) {
                    setState(() {
                      message = "Scroll Start";
                    });
                  } else if (notification is ScrollUpdateNotification) {
                    setState(() {
                      message = "Scroll Update";
                    });
                  } else if (notification is ScrollEndNotification) {
                    setState(() {
                      message = "Scroll End";
                    });
                  }
                  return true;
                },
                child: ListView.builder(
                  itemCount: 30,
                  itemBuilder: (context, index) {
                    return ListTile(title: Text("Index : $index"));
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
