import 'package:flutter/material.dart';

class Day22 extends StatefulWidget {
  const Day22({super.key});

  @override
  State<Day22> createState() => _Day22State();
}

class _Day22State extends State<Day22> {
  final family = [
    'lol',
    'valorant',
    'minecraft',
    'diablo',
    'genchen impact',
    'over Watch',
    'battel filed',
    'lembo',
    'inside',
  ];
  var _viewItem;

  var _widthItem = ClipRRect(
    child: Container(
      color: Colors.deepOrange,
      width: 250,
      height: 100,
      child: Center(
        child:
            Text("Click", style: TextStyle(fontSize: 20, color: Colors.white)),
      ),
    ),
    borderRadius: BorderRadius.circular(10.0),
  );

  var _heightItem = ClipRRect(
    child: Container(
      color: Colors.deepPurple,
      width: 100,
      height: 250,
      child: Center(
        child:
            Text("Click", style: TextStyle(fontSize: 20, color: Colors.white)),
      ),
    ),
    borderRadius: BorderRadius.circular(10.0),
  );
  @override
  void initState() {
    super.initState();
    _viewItem = _widthItem;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            GestureDetector(
              onTap: () {
                setState(() {
                  _viewItem =
                      _viewItem == _widthItem ? _heightItem : _widthItem;
                });
              },
              child: Center(
                child: AnimatedSwitcher(
                  duration: const Duration(milliseconds: 500),
                  transitionBuilder: (child, animation) => RotationTransition(
                    turns: Tween(begin: 0.0, end: 3.0).animate(animation),
                    child: child,
                  ),
                  child: Container(
                    key: ValueKey<ClipRRect>(_viewItem),
                    child: _viewItem,
                  ),
                ),
              ),
            ),
            Container(
              height: 600,
              child: ReorderableListView(
                header: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "Order the Games",
                          style: TextStyle(fontSize: 20, color: Colors.black),
                        ),
                        TextSpan(
                          text: "\nLong press and drag to reorder the list",
                          style: TextStyle(fontSize: 15, color: Colors.black),
                        ),
                      ],
                    ),
                  ),
                ),
                children: <Widget>[
                  for (String data in family)
                    ListTile(
                      key: ValueKey(data),
                      title: Text(data),
                    )
                ],
                onReorder: (int oldIndex, int newIndex) {
                  setState(() {
                    family.insert(newIndex, family.removeAt(oldIndex));
                  });
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
