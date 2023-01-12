import 'package:flutter/material.dart';

class Day40 extends StatefulWidget {
  const Day40({super.key});

  @override
  State<Day40> createState() => _Day40State();
}

class _Day40State extends State<Day40> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: ElevatedButton(
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text("About"),
              SizedBox(
                width: 5,
              ),
              Icon(Icons.info),
            ],
          ),
          onPressed: () {
            
            showAboutDialog(
              
              context: context,
              applicationIcon: Image.asset(
             
            'images/logo.gif',
                width: 50,
                height: 50,
              ),
              applicationVersion: '0.1',
              applicationName: '100 Days of Flutter',
              applicationLegalese:
                  'This is the small initiative for learning widgets in a flutter in 100 days continuously.', // ! details of App....
            );
          },
        ),
      ),
    );
  }
}