import 'package:flutter/material.dart';

class Day5 extends StatefulWidget {
  Day5({Key? key}) : super(key: key);

  @override
  State<Day5> createState() => _Day5State();
}

class _Day5State extends State<Day5> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     // appBar: AppBar(),
      body: SafeArea(
         child: CustomScrollView(
          slivers: [
            SliverAppBar(
              flexibleSpace: FlexibleSpaceBar(
                centerTitle: true,
                title: Text('SliverAppBar'),
                
              ),
               backgroundColor:
                  Colors.green, // ! to provide the bg color for tha app bar....
              //brightness: Brightness.light, // ! to provide the [brightness] like dark or light....
              floating: true, // ! to make the appbar floating...
              elevation: 10.0, // ! to give cool shadow effect....
              expandedHeight: 150.0,
              
            ),
            SliverList(delegate: SliverChildListDelegate([
              ListTile(
                title: Text("Hello 1"),
              ),
              ListTile(
                title: Text("Hello 2"),
              ),
              ListTile(
                title: Text("Hello 3"),
              ),
              ListTile(
                title: Text("Hello 4"),
              ),
              ListTile(
                title: Text("Hello 5"),
              ),
              ListTile(
                title: Text("Hello 6"),
              ),
              ListTile(
                title: Text("Hello 7"),
              ),
              ListTile(
                title: Text("Hello 8"),
              ),
               Table(
          defaultColumnWidth: FractionColumnWidth(0.1),
          columnWidths: {2: FractionColumnWidth(0.1)},
          defaultVerticalAlignment: TableCellVerticalAlignment.middle,
          textBaseline: TextBaseline.ideographic,
          textDirection: TextDirection.ltr,
          border: TableBorder.all(
            color: Colors.indigo.shade900,
            width: 2.0
          ),
          children: [
            TableRow(
              children: [
                Container(
                height: 50,
                color: Colors.red,
              ),
              Container(
                height: 100,
                color: Colors.yellow,
              ),
              Container(
                height: 150,
                color: Colors.orange,
              ),
              Container(
                height: 150,
                color: Colors.pink,
              ),
              Container(
                height: 100,
                color: Colors.black,
              ),
              Container(
                height: 50,
                color: Colors.blue,
              ),
            ]),
            TableRow(children: [
              Container(
                height: 150,
                color: Colors.pink,
              ),
              Container(
                height: 100,
                color: Colors.black,
              ),
              Container(
                height: 50,
                color: Colors.blue,
              ),
              Container(
                height: 50,
                color: Colors.green,
              ),
              Container(
                height: 100,
                color: Colors.purple,
              ),
              Container(
                height: 150,
                color: Colors.cyan,
              ),
            ]),
            TableRow(children: [
              Container(
                height: 50,
                color: Colors.green,
              ),
              Container(
                height: 100,
                color: Colors.purple,
              ),
              Container(
                height: 150,
                color: Colors.cyan,
              ),
              Container(
                height: 50,
                color: Colors.red,
              ),
              Container(
                height: 100,
                color: Colors.yellow,
              ),
              Container(
                height: 150,
                color: Colors.orange,
              ),
              ]
            )
          ],
        )
            ]))
          ],
         ),
         ),
    );
  }
}