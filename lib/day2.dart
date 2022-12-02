import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:convert/convert.dart';

class Day2 extends StatefulWidget {
  const Day2({super.key});

  @override
  State<Day2> createState() => _Day2State();
}

class _Day2State extends State<Day2> {
  bool opacity1 = true;

  Future getData() async {
    var url = "https://dummyjson.com/posts/1";
    var response = await http.get(Uri.parse(url));
    var responseBody = jsonDecode(response.body);
    return responseBody;
  }
  @override
  Widget build(BuildContext context) {
    bool checkAnimation = true;

    var withAnimation = AnimatedOpacity(
      opacity: opacity1 ? 0.0 : 1.0,
      duration: Duration(milliseconds: 500),
      child: Center(
        child: Container(
          width: 250,
          height: 250,
          color: Colors.deepPurple,
        ),
      ),
    );
    var withOutAnimation = Opacity(
      opacity: opacity1 ? 0.0 : 1.0,
      child: Center(
        child: Container(
          width: 250,
          height: 250,
          color: Colors.deepPurple,
        ),
      ),
    );

    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FutureBuilder(
              future: getData(),
              initialData: "Waiting for the Record....",
              builder: ((context, snapshot) {
                if(snapshot.connectionState == ConnectionState.done) {
                  return Center(
                    child:  
                        Text("${snapshot.data['title']}"),
                        
                        
                      
                  );
                }else if (snapshot.hasError) {
                return 
                  Padding(
                    padding: const EdgeInsets.only(top: 16),
                    child: Text('Error: ${snapshot.error}'),
                  );
                
              }
                else {
                  return Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CircularProgressIndicator(), 
                        SizedBox(
                          height: 10,
                        ),// ? [CircularProgressIndicator] is used to show the progress....
                        // Text(
                        //   snapshot.data.toString(),
                        // ), // ?  here we print the inital data from the [initialData] property....
                        Text(
                          snapshot.connectionState.toString(),
                        ), // ?
                        
                      ],
                    ),
                  );
                }
              })),
              SizedBox(height: 20,),
              Center(
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            opacity1 = !opacity1;
                          });
                        },
                        child: checkAnimation ? withAnimation : withOutAnimation,
                      ),
                    )
          ],
        ),
      ),
    );
  }
}
