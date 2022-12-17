import 'package:flutter/material.dart';
import 'package:i100daysofcodei/day1.dart';
import 'package:i100daysofcodei/day2.dart';
import 'package:i100daysofcodei/day3.dart';
import 'package:i100daysofcodei/day4.dart';
import 'package:i100daysofcodei/day5.dart';
import 'package:i100daysofcodei/day6.dart';
import 'package:i100daysofcodei/day7.dart';
import 'package:i100daysofcodei/day8.dart';
import 'package:i100daysofcodei/day9.dart';
import 'package:i100daysofcodei/day10.dart';
import 'package:i100daysofcodei/day11.dart';
import 'package:i100daysofcodei/day12.dart';
import 'package:i100daysofcodei/day13.dart';
import 'package:i100daysofcodei/day14.dart';
import 'package:i100daysofcodei/day15.dart';
import 'package:i100daysofcodei/day16.dart';

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
      home: Day16(),
    );
  }
}

