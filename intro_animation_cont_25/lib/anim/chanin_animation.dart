import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ChainAnimtion extends AnimatedWidget {
  static final _opacityTween = Tween<double>(begin: 0.0, end: 1.0);
  static final sizeTween = Tween<double>(begin: 0.0, end: 200.0);
  ChainAnimtion({Key? key, Animation<double>? animation})
      : super(key: key, listenable: animation!);

  @override
  Widget build(BuildContext context) {
    Animation<double> animation2 = listenable as Animation<double>;
    return Center(
      child: Opacity(
        opacity: _opacityTween.evaluate(animation2),
        child: Container(
          margin: EdgeInsets.symmetric(vertical: 10.0),
          height: sizeTween.evaluate(animation2),
          width: sizeTween.evaluate(animation2),
          child: ElevatedButton(
            child: Text('Elevated Button'),
            onPressed: () {},
          ),
        ),
      ),
    );
  }
}
