import 'package:flutter/material.dart';

class CounterAnimator extends StatefulWidget {
  const CounterAnimator({Key? key}) : super(key: key);

  @override
  _CounterAnimatorState createState() => _CounterAnimatorState();
}

class _CounterAnimatorState extends State<CounterAnimator>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> animation;
  int _counter = 0;

  @override
  void initState() {
    super.initState();
    _controller =
        AnimationController(duration: Duration(seconds: 3), vsync: this);

    animation = CurvedAnimation(parent: _controller, curve: Curves.easeIn);

    _controller.addListener(() {
      setState(() {
        _counter++;
        debugPrint('print $_counter');
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
      child: Text(
        _controller.isAnimating
        ?(_counter).toStringAsFixed(2)
        :"Lets begin",style: TextStyle(fontSize: 24.0 * _controller.value + 16.0),
      ),
      onTap: () {
        _controller.forward(from: 0.0);
      },
    );
  }
}
