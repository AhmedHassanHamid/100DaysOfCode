import 'package:flutter/material.dart';

class Day20 extends StatefulWidget {
  const Day20({super.key});

  @override
  State<Day20> createState() => _Day20State();
}

class _Day20State extends State<Day20> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: Center(
          child: Stack(
            alignment: Alignment.center,
            children: <Widget>[
              AspectRatio(
                aspectRatio:
                    3 / 2, 
                child: Container(
                  color: Theme.of(context).primaryColor,
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: AspectRatio(
                        aspectRatio:
                            1, 
                        child: Container(color: Theme.of(context).accentColor),
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                width: 300,
                height: 300,
                child: LimitedBox(
                  maxWidth: 150,
                  maxHeight: 150,
                  child: Container(
                    color: Colors.red,
                  ),
                ),
              ),
              UnconstrainedBox(
                
                child: LimitedBox(
                  maxWidth: 150,
                  maxHeight: 150,
                  child: Container(
                    color: Colors.amber,
                  ),
                ),
              ),
            ],
          ),
        ),
      )
      // body: SafeArea(
      //   child: Container(
      //     width: double.infinity,
      //     height: double.infinity,
      //     child: Center(
      //       child: Padding(
      //         padding: const EdgeInsets.all(20.0),
      //         child: AspectRatio(
      //           aspectRatio:
      //               3 / 2, 
      //           child: Container(
      //             color: Theme.of(context).primaryColor,
      //             child: Center(
      //               child: Padding(
      //                 padding: const EdgeInsets.all(20.0),
      //                 child: AspectRatio(
      //                   aspectRatio:
      //                       1, 
      //                   child: Container(color: Theme.of(context).accentColor),
      //                 ),
      //               ),
      //             ),
      //           ),
      //         ),
      //       ),
      //     ),
      //   ),
      // ),
    );
  }
}