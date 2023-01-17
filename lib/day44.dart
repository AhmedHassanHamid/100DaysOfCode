import 'package:flutter/material.dart';
import 'package:location/location.dart';

class Day44 extends StatefulWidget {
  Day44({Key? key}) : super(key: key);

  @override
  State<Day44> createState() => _Day44State();
}

class _Day44State extends State<Day44> {
  Location location = new Location();
  bool? serviceEnabled;
  PermissionStatus? permissionGranted;
  LocationData? locationData;
  bool isListenLocation = false, isGetLocation = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(onPressed: () async{
              serviceEnabled = await location.serviceEnabled();
              if(!serviceEnabled!) {
                serviceEnabled = await location.requestService();
                if(serviceEnabled!) return;
              }

              permissionGranted = await location.hasPermission();
              if(permissionGranted! == PermissionStatus.denied) {
                permissionGranted = await location.requestPermission();
                if(permissionGranted! != PermissionStatus.granted) return;
              }
              locationData = await location.getLocation();
              setState(() {
                isGetLocation = true;
              });


            }, child: Text('Get Location')),
            isGetLocation
                ? Text(
                    'Location: ${locationData!.latitude}/${locationData!.longitude}')
                : Container()
          ],
        ),
      ),
    );
  }
}
