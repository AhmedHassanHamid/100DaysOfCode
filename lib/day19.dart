import 'package:flutter/material.dart';

class Day19 extends StatefulWidget {
  const Day19({Key? key}) : super(key: key);

  @override
  State<Day19> createState() => _Day19State();
}

class _Day19State extends State<Day19> with SingleTickerProviderStateMixin {
  AnimationController? _controller;
  Animation<double>? animIcon;
  @override
  void initState() {
    super.initState();
    _controller =
        AnimationController(vsync: this, duration: Duration(seconds: 2));
    animIcon = Tween(begin: 0.0, end: 1.0).animate(_controller!);
  }

  @override
  void dispose() {
    super.dispose();
    _controller!.dispose();
  }

  @override
  Widget build(BuildContext context) {
    _controller!.repeat();
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: Column(
          children: [
            Container(
              child: Center(
                child: Wrap(
                  alignment: WrapAlignment.center,
                  crossAxisAlignment: WrapCrossAlignment.center,
                  verticalDirection: VerticalDirection.down,
                  runAlignment: WrapAlignment.center,
                  runSpacing: 10,
                  spacing: 10,
                  children: <Widget>[
                    AnimatedIcon(
                      icon: AnimatedIcons.add_event,
                      progress: animIcon!,
                      size: 100,
                      color: Colors.lightGreen,
                    ),
                    AnimatedIcon(
                      icon: AnimatedIcons.arrow_menu,
                      progress: animIcon!,
                      size: 100,
                    ),
                    AnimatedIcon(
                      icon: AnimatedIcons.close_menu,
                      progress: animIcon!,
                      size: 100,
                      color: Colors.lightGreen,
                    ),
                    AnimatedIcon(
                      icon: AnimatedIcons.ellipsis_search,
                      progress: animIcon!,
                      size: 100,
                    ),
                    AnimatedIcon(
                      icon: AnimatedIcons.event_add,
                      progress: animIcon!,
                      size: 100,
                      color: Colors.lightGreen,
                    ),
                    AnimatedIcon(
                      icon: AnimatedIcons.home_menu,
                      progress: animIcon!,
                      size: 100,
                    ),
                    AnimatedIcon(
                      icon: AnimatedIcons.list_view,
                      progress: animIcon!,
                      size: 100,
                      color: Colors.lightGreen,
                    ),
                    AnimatedIcon(
                      icon: AnimatedIcons.menu_arrow,
                      progress: animIcon!,
                      size: 100,
                    ),
                    AnimatedIcon(
                      icon: AnimatedIcons.menu_close,
                      progress: animIcon!,
                      size: 100,
                      color: Colors.lightGreen,
                    ),
                    AnimatedIcon(
                      icon: AnimatedIcons.menu_home,
                      progress: animIcon!,
                      size: 100,
                    ),
                    AnimatedIcon(
                      icon: AnimatedIcons.pause_play,
                      progress: animIcon!,
                      size: 100,
                      color: Colors.lightGreen,
                    ),
                    AnimatedIcon(
                      icon: AnimatedIcons.play_pause,
                      progress: animIcon!,
                      size: 100,
                    ),
                    AnimatedIcon(
                      icon: AnimatedIcons.search_ellipsis,
                      progress: animIcon!,
                      size: 100,
                      color: Colors.lightGreen,
                    ),
                    AnimatedIcon(
                      icon: AnimatedIcons.view_list,
                      progress: animIcon!,
                      size: 100,
                    ),
                  ],
                ),
              ),
            ),
            Container(
              width: double.infinity,
              height: 20,
              color: Colors.red[200],
            ),
            Spacer(), // ? What is Spacer....

            Container(
              width: double.infinity,
              height: 20,
              color: Colors.yellow[200],
            ),
            Spacer(
              flex: 2,
            ),

            Container(
              width: double.infinity,
              height: 20,
              color: Colors.green[200],
            ),
          ],
        ),
      ),
    );
  }
}
