import 'package:flutter/material.dart';

class Day33 extends StatefulWidget {
  Day33({Key? key}) : super(key: key);

  @override
  State<Day33> createState() => _Day33State();
}

class _Day33State extends State<Day33> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      initialIndex: 0,
      child: Scaffold(
        appBar: AppBar(
          bottom: TabBar(
            tabs: [
              Tab(
                child: Text("Left"),
              ),
              Tab(
                child: Text("Mid"),
              ),
              Tab(
                child: Text("Right"),
              ),
            ],
          ),
        ),
        drawer: Drawer(
          elevation: 20,
          child: ListView(
            children: <Widget>[
              DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.blue,
                ),
                child: Text(
                  'This is Left Header',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                  ),
                ),
              ),
              ListTile(
                leading: Icon(Icons.message),
                title: Text('Left Messages'),
              ),
              ListTile(
                leading: Icon(Icons.account_circle),
                title: Text('Left Profile'),
              ),
              ListTile(
                leading: Icon(Icons.settings),
                title: Text('Left Settings'),
              ),
              ListTile(
                leading: Icon(Icons.close),
                title: Text('Left Close'),
                onTap: () => Navigator.of(context).pop(),
              ),
            ],
          ),
        ),
        endDrawer: Drawer(
          child: ListView(
            children: <Widget>[
              DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.blue,
                ),
                child: Text(
                  'This is Right Header',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                  ),
                ),
              ),
              ListTile(
                leading: Icon(Icons.message),
                title: Text('Right Messages'),
              ),
              ListTile(
                leading: Icon(Icons.account_circle),
                title: Text('Right Profile'),
              ),
              ListTile(
                leading: Icon(Icons.settings),
                title: Text('Right Settings'),
              ),
              ListTile(
                leading: Icon(Icons.close),
                title: Text('Right Close'),
                onTap: () => Navigator.of(context).pop(),
              ),
            ],
          ),
        ),
        body: SafeArea(
          child: TabBarView(
            children: [
              Center(
                child: Text(
                  "This is Left Side",
                  style: TextStyle(fontSize: 30, color: Colors.pink),
                ),
              ),
              Center(
                child: Text(
                  "This is Middle",
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.purple,
                  ),
                ),
              ),
              Center(
                child: Text(
                  "This is Right Side",
                  style: TextStyle(fontSize: 30, color: Colors.deepOrange),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
