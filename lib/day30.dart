import 'package:flutter/material.dart';

class Day30 extends StatefulWidget {
  const Day30({super.key});

  @override
  State<Day30> createState() => _Day30State();
}

class _Day30State extends State<Day30> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        child: Stack(
          fit: StackFit.expand,
          children: <Widget>[
           
            DraggableScrollableSheet(
              expand: true,
              initialChildSize: 0.10,
              maxChildSize: 0.90,
              minChildSize: 0.10,
              builder:
                  (BuildContext context, ScrollController scrollController) {
                return Container(
                  color: Colors.blue[100],
                  child: ListView.builder(
                    controller: scrollController,
                    itemCount: 20,
                    itemBuilder: (BuildContext context, int index) {
                      return ListTile(title: Text('Item ${index + 1}'));
                    },
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
