import 'package:flutter/material.dart';

class Day37 extends StatefulWidget {
  const Day37({super.key});

  @override
  State<Day37> createState() => _Day37State();
}

class _Day37State extends State<Day37> {
  double loader = 0.0;
  bool isLoading = true;
  @override
  Widget build(BuildContext context) {
    if (isLoading) {
      Future.delayed(Duration(milliseconds: 500), () {
        if (loader <= 1.0) {
          print("loader : $loader");
          setState(() {
            loader += 0.05;
          });
        } else {
          setState(() {
            isLoading = false;
          });
        }
      });
    }
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Container(
                child: Center(
                  child: CircularProgressIndicator(
                    backgroundColor: Colors.black,
                    valueColor: AlwaysStoppedAnimation(Colors.green),
                    strokeWidth: 10,
                    value: loader,
                  ),
                ),
              ),
            ),
            Divider(
              color: Colors.red,
              thickness: 5,
              indent: 25,
              endIndent: 25,
            ),
            Expanded(
              child: IgnorePointer(
                // ! simplely added IgnorePointer....
                ignoring: true, // ! and set the [ignoring] to true....
                child: ListView.builder(
                  // ! so that this listview can't able to scroll....
                  itemBuilder: (BuildContext context, int index) {
                    return ListTile(
                      title: Text("Item - $index"),
                    );
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
