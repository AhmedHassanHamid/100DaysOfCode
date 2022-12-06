import 'package:flutter/material.dart';

class Day6 extends StatefulWidget {
  Day6({Key? key}) : super(key: key);

  @override
  State<Day6> createState() => _Day6State();
}

class _Day6State extends State<Day6> {
  @override
  Widget build(BuildContext context) {
    childrenList(text, pickColor) {
      return <Widget>[
        Container(
          alignment: Alignment.center,
          color: pickColor[100],
          child: Text('$text Items 1'),
        ),
        Container(
          alignment: Alignment.center,
          color: pickColor[200],
          child: Text('$text Items 2'),
        ),
        Container(
          alignment: Alignment.center,
          color: pickColor[300],
          child: Text('$text Items 3'),
        ),
        Container(
          alignment: Alignment.center,
          color: pickColor[400],
          child: Text('$text Items 4'),
        ),
        Container(
          alignment: Alignment.center,
          color: pickColor[500],
          child: Text('$text Items 5'),
        ),
        Container(
          alignment: Alignment.center,
          color: pickColor[600],
          child: Text('$text Items 6'),
        ),
        Container(
          alignment: Alignment.center,
          color: pickColor[700],
          child: Text('$text Items 7'),
        ),
        Container(
          alignment: Alignment.center,
          color: pickColor[800],
          child: Text('$text Items 8'),
        ),
      ];
    }

    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverAppBar(
              pinned: true,
              elevation: 20.0,
              expandedHeight: 250.0,
              flexibleSpace: FlexibleSpaceBar(
                centerTitle: true,
                title: Text('SliverGridList'),
              ),
            ),
            SliverGrid(
              delegate: SliverChildBuilderDelegate(
                (BuildContext context, int index) {
                  return Container(
                    alignment: Alignment.center,
                    color: Colors.teal[200 * ((index % 4) + 1)],
                    child: Text('Grid Item $index'),
                  );
                },
                childCount: 20, // ! with the hel
              ),
              gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 100.0,
                mainAxisSpacing: 10.0,
                crossAxisSpacing: 10.0,
                childAspectRatio: 0.9,
              ),
            ),
            SliverGrid.extent(
              maxCrossAxisExtent: 150,
              children: childrenList("SliverGrid.extent", Colors.orange),
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
            ),
            SliverGrid.count(
              mainAxisSpacing: 10,
              crossAxisSpacing: 10,
              crossAxisCount: 2,
              children: childrenList("SliverGrid.count", Colors.green),
            ),
            SliverList(
              delegate: SliverChildListDelegate(
                  childrenList("SliverList Items", Colors.red)),
            ),
            SliverFixedExtentList(
                delegate: SliverChildBuilderDelegate(
                  (BuildContext context, int index) {
                    return Container(
                      alignment: Alignment.center,
                      color: Colors.lightBlue[100 * (index % 9)],
                      child: Text('List Item $index'),
                    );
                  },
                ),
                itemExtent: 100)
          ],
        ),
      ),
    );
  }
}
