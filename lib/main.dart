

import 'dart:io';

import 'package:device_info_plus/device_info_plus.dart';
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
import 'package:i100daysofcodei/day17.dart';
import 'package:i100daysofcodei/day18.dart';
import 'package:i100daysofcodei/day19.dart';
import 'package:i100daysofcodei/day20.dart';
import 'package:i100daysofcodei/day21.dart';
import 'package:i100daysofcodei/day22.dart';
import 'package:i100daysofcodei/day23.dart';
import 'package:i100daysofcodei/day24.dart';
import 'package:i100daysofcodei/day25.dart';
import 'package:i100daysofcodei/day26.dart';
import 'package:i100daysofcodei/day27.dart';
import 'package:i100daysofcodei/day28.dart';
import 'package:i100daysofcodei/day29.dart';
import 'package:i100daysofcodei/day30.dart';
import 'package:i100daysofcodei/day31.dart';
import 'package:i100daysofcodei/day32.dart';
import 'package:i100daysofcodei/day33.dart';
import 'package:i100daysofcodei/day34.dart';
import 'package:i100daysofcodei/day35.dart';
import 'package:i100daysofcodei/day36.dart';
import 'package:i100daysofcodei/day37.dart';
import 'package:i100daysofcodei/day38.dart';
import 'package:i100daysofcodei/day39.dart';
import 'package:i100daysofcodei/day40.dart';
import 'package:i100daysofcodei/day41.dart';
import 'package:i100daysofcodei/day42.dart';
import 'package:i100daysofcodei/day43.dart';
import 'package:i100daysofcodei/day44.dart';
import 'package:i100daysofcodei/day45.dart';

Future<void> main() async{
   WidgetsFlutterBinding.ensureInitialized();

  DeviceInfoPlugin deviceInfo = DeviceInfoPlugin();

  if (Platform.isAndroid) {
    AndroidDeviceInfo info = await deviceInfo.androidInfo;
    print(info);
  } else if (Platform.isIOS) {
    IosDeviceInfo info = await deviceInfo.iosInfo;
    print(info.toMap());
  } else if (Platform.isLinux) {
    LinuxDeviceInfo info = await deviceInfo.linuxInfo;
    print(info.toMap());
  } else if (Platform.isMacOS) {
    MacOsDeviceInfo info = await deviceInfo.macOsInfo;
    print(info.toMap());
  } else if (Platform.isWindows) {
    WindowsDeviceInfo info = await deviceInfo.windowsInfo;
    print(info.toMap());
  }

  // final info = await deviceInfo.deviceInfo;
  // print(info.toMap());
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
      home: Day45(),
    );
  }
}

