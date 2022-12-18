import 'package:flutter/material.dart';

class Day17 extends StatefulWidget {
  Day17({Key? key}) : super(key: key);

  @override
  State<Day17> createState() => _Day17State();
}

class _Day17State extends State<Day17> {
  List<String> family = [];
  final GlobalKey<AnimatedListState> _animList = GlobalKey<AnimatedListState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
          width: double.infinity,
          height: double.infinity,
          child: Column(
            children: <Widget>[
              Expanded(
                flex: 2,
                child: AnimatedList(
                  key: _animList,
                  itemBuilder: (context, index, animation) {
                    return FadeTransition(
                      opacity: animation.drive(
                        Tween(begin: 0.0, end: 1.0),
                      ),
                      child: ListTile(
                        title: Text("${family[index]}"),
                      ),
                    );
                  },
                  initialItemCount: family.length,
                  scrollDirection: Axis.vertical,
                  shrinkWrap: false,
                  padding: EdgeInsets.all(20.0),
                  primary: true,
                  reverse: false,
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ElevatedButton(
                          onPressed: () {
                            setState(() {
                              family.add("Item at : ${family.length}");

                              _animList.currentState!
                                  .insertItem(family.length - 1);
                              print("Add : ${family.length - 1}");
                            });
                          },
                          child: Text("Add"),
                        ),
                      ),
                      flex: 1,
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ElevatedButton(
                          onPressed: () {
                            if (family.isNotEmpty) {
                              setState(() {
                                int index = family.length - 1;
                                _animList.currentState!.removeItem(
                                  index, // ? here we need to provide index value....
                                  (context, animation) => FadeTransition(
                                    opacity: animation.drive(
                                      Tween(begin: 0.0, end: 1.0),
                                    ),
                                    child: ListTile(
                                      title: Text(family.removeLast()),
                                    ),
                                  ),
                                );
                                print("Remove : ${family.length - 1}");
                              });
                            }
                          },
                          child: Text("Remove"),
                        ),
                      ),
                      flex: 1,
                    )
                  ],
                ),
              )
            ],
          )),
    );
  }
}
