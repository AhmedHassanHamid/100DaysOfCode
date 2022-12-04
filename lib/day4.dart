import 'package:flutter/material.dart';

class Day4 extends StatefulWidget {
  Day4({Key? key}) : super(key: key);

  @override
  State<Day4> createState() => _Day4State();
}

class _Day4State extends State<Day4> {
  bool color = true;
  PageController? _pageController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _pageController = PageController(initialPage: 0, keepPage: false, viewportFraction: 1.0);
  }

  @override
  Widget build(BuildContext context) {
    final bool _isVertical = false;
    return Scaffold(
      appBar: AppBar(),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        elevation: 10,
        mini: false,
        onPressed: () {
          setState(() {
            color = !color;
          });
        },
      ),
      floatingActionButtonLocation: color ? FloatingActionButtonLocation.endDocked
      :FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        color: color ? Colors.yellow : Colors.pink,
        child: Container(
          height: color ? 120 : 60,
        ),
      ),
      body: SafeArea(
        child: PageView(
          controller: _pageController,
          scrollDirection: _isVertical ? Axis.vertical : Axis.horizontal,
          children: [
            pageCreator(1),
            pageCreator(2),
            pageCreator(3),
            pageCreator(4),
            pageCreator(5),
          ],
        )
      ),

    );
  }
  pageCreator(int i){
    List<MaterialColor> _color = [
      Colors.red,
      Colors.green,
      Colors.yellow,
      Colors.blue,
      Colors.brown
    ];
    return Center(
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Container(
          width: 250,
          height: 250,
          color: _color[i - 1],
          child: Center(
            child: Text('page no $i'),
          ),
        ),
      ),
    );
  }
}