import 'package:flutter/material.dart';

class Day14 extends StatefulWidget {
  const Day14({super.key});

  @override
  State<Day14> createState() => _Day14State();
}

class _Day14State extends State<Day14> {
  final family = [
   "lol",
   "lol1",
   "lol2",
   "lol3",
   "lol4",
   "lol5",
   "lol6",
   "lol7",
   "lol8",
   "lol9",
   "lol10",
   "lol11",
   "lol12",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: ListView.builder(
          // ! Creating the List view....
          itemCount: family.length,
          itemBuilder: (BuildContext context, int index) {
            return Dismissible(
                 
              key: Key(family[
                  index]), 
              child: ListTile(
               
                title: Text(family[index]),
              ),
              background: Container(
               
                color: Colors.green,
                child: Icon(Icons.add),
                alignment: Alignment.centerLeft,
                padding: EdgeInsets.only(left: 25),
              ),
              secondaryBackground: Container(
               
                color: Colors.red,
                child: Icon(Icons.remove),
                alignment: Alignment.centerRight,
                padding: EdgeInsets.only(right: 25),
              ),
              onDismissed: (direction) {
               
                setState(() {
                  family.removeAt(
                      index);
                });
                            Text("Member ${family[index]} Dismissed by Red");
              },
              direction: DismissDirection.horizontal,
             
              movementDuration: Duration(
                  seconds:
                      2), 
              resizeDuration: Duration(
                  seconds:
                      2),
            );
          },
        ),
      ),
    );
  }
}