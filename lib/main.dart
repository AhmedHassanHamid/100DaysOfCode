import 'package:flutter/material.dart';
import 'package:i100daysofcodei/day1.dart';
import 'package:i100daysofcodei/day2.dart';
import 'package:i100daysofcodei/day3.dart';
import 'package:i100daysofcodei/day4.dart';
import 'package:i100daysofcodei/day5.dart';
import 'package:i100daysofcodei/day6.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Day6(),
    );
  }
}

