import 'package:flutter/material.dart';

class CounterAnimtion extends StatefulWidget {
  const CounterAnimtion({Key? key}) : super(key: key);

  @override
  _CounterAnimtionState createState() => _CounterAnimtionState();
}

class _CounterAnimtionState extends State<CounterAnimtion>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> animation;
  int counter = 0;

  @override
  void initState() {
    super.initState();
    _controller =
        AnimationController(vsync: this, duration: Duration(seconds: 3));
    // animation = CurvedAnimation(parent: _controller, curve: Curves.easeInCirc);
    animation = Tween(begin: 0.0, end: 100.0).animate(_controller)
      ..addStatusListener((status) {
        if (status == AnimationStatus.completed) {
          _controller.reverse(from: 5.0);
        } else if (status == AnimationStatus.reverse) {
          setState(() {
            counter = counter - 400;
          });
        }
      })
      ..addListener(() {
        setState(() {
          debugPrint('print ${animation.value}');
        });
      });
    _controller.addListener(() {
      setState(() {
        counter++;
        debugPrint("Print $counter");
      });
    });
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        _controller.forward(from: 0.0);
      },
      child: Text(
        _controller.isAnimating ? (counter).toStringAsFixed(2) : "Lets begin",
        style: TextStyle(fontSize: 30.0 * animation.value + 16.0),
      ),
    );
  }
}
