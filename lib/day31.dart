import 'package:flutter/material.dart';

class Day31 extends StatefulWidget {
  Day31({Key? key}) : super(key: key);

  @override
  State<Day31> createState() => _Day31State();
}

class _Day31State extends State<Day31> {
  final List<bool> selectedFruits = <bool>[false, false, false, false];
  List<bool> selected = List.generate(4, (index) => false);
  List<BlendMode> bblend = [
    BlendMode.darken,
    BlendMode.colorBurn,
    BlendMode.difference,
    BlendMode.dstATop
  ];
  BlendMode blend = BlendMode.color;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Center(
          child: Column(
            children: [
              Center(
                child: ColorFiltered(
                  colorFilter: ColorFilter.mode(Colors.red, blend),
                  child: Container(
                    width: 250,
                    height: 250,
                    color: Colors.blue,
                    child: Center(
                      child: SizedBox(
                        width: 100,
                        height: 100,
                        child: Image.asset(
                          "images/coffee.jpg",
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              ToggleButtons(
                children: [
                  SizedBox(
                      width: 100,
                      height: 100,
                      child: FittedBox(child: Text("edit"))),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(
                      Icons.wb_sunny,
                      size: 50,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(
                      Icons.wb_cloudy,
                      size: 50,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(
                      Icons.ac_unit,
                      size: 50,
                    ),
                  )
                ],
                isSelected: selectedFruits,
                onPressed: (index) {
                  setState(() {
                    for (var i = 0; i < selectedFruits.length; i++) {
                      selectedFruits[i] = i == index;
                    }
                    //selected[index] = !selected[index];
                    blend = bblend[index];
                  });
                },
                color: Colors.red,
                selectedColor: Colors.green,
                fillColor: Colors.green[100],
                focusColor: Colors.red[100],
                hoverColor: Colors.red[100],
                borderColor: Colors.deepPurple[800],
                highlightColor: Colors.black12,
                splashColor: Colors.black,
                selectedBorderColor: Colors.amber[800],
                renderBorder: true,
              ),
            ],
          ),
        ));
  }
}
