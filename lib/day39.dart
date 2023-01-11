import 'package:flutter/material.dart';
import 'dart:math' as math;

class SpinningContainer extends AnimatedWidget {
  const SpinningContainer({
    super.key,
    required AnimationController controller,
  }) : super(listenable: controller);

  Animation<double> get _progress => listenable as Animation<double>;

  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: _progress.value * 2.0 * math.pi,
      child: Container(width: 200.0, height: 200.0, color: Colors.green),
    );
  }
}

class Day39 extends StatefulWidget {
  Day39({Key? key}) : super(key: key);

  @override
  State<Day39> createState() => _Day39State();
}

class _Day39State extends State<Day39> with TickerProviderStateMixin {
  late final AnimationController _controller = AnimationController(
    duration: const Duration(seconds: 10),
    vsync: this,
  )..repeat();

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  var _isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 100, top: 50),
            child: CheckboxListTile(
              value: _isChecked,
              onChanged: (value) {
                setState(() {
                  _isChecked = value!;
                });
              },
              title: Text("Check Box!"),
              secondary: Icon(Icons.check),
              controlAffinity: _isChecked
                  ? ListTileControlAffinity.trailing
                  : ListTileControlAffinity.leading,
            ),
          ),
          SpinningContainer(controller: _controller),
        ],
      ),
    );
  }
}
