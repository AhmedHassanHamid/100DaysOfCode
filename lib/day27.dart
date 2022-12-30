import 'package:flutter/material.dart';

class Day27 extends StatefulWidget {
  Day27({Key? key}) : super(key: key);

  @override
  State<Day27> createState() => _Day27State();
}

class _Day27State extends State<Day27> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView.separated(
        itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.all(15),
          child: Container(
            
            color: Color.fromARGB(255, 74, 90, 113),
            child: ListTile(
                leading: FittedBox(
                  child: FlutterLogo(
                    size: 100,
                  ),
                ),
                title: Text("Item Data : $index"),
                trailing: Icon(
                  Icons.star,
                  color: Colors.yellow,
                ),
                subtitle: Text(
                    "Hi there, This is Ahmed! This is $index"),
                isThreeLine:
                    true, // ! and also specify the line space is 3 or 2....
              ),
          ),
        );
        },
        separatorBuilder: (context, index) => Divider(),
        itemCount: 50,
        scrollDirection: Axis.vertical,
      ),
    );
  }
}
