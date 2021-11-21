import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ChainAnim extends AnimatedWidget {
  static final _opacityTween = Tween(begin: 0.0, end: 1.0);
  static final _sizeTween = Tween(begin: 5.0, end: 320.0);
  static final _colorTween = ColorTween(begin: Colors.red, end:Colors.blueAccent);

  
  const ChainAnim({Key? key, required Animation<double> animation, })
      : super(key: key, listenable: animation);
  

  @override
  Widget build(BuildContext context) {
    final Animation<double> animation = listenable as Animation<double>;
    return Center(
      child: Opacity(
        opacity: _opacityTween.evaluate(animation),
        child: Container(
          margin: EdgeInsets.symmetric(vertical: 10.0),
          height: _sizeTween.evaluate(animation),
          width: _sizeTween.evaluate(animation),
          color: _colorTween.evaluate(animation),
          // child: ElevatedButton(
          //   onPressed: () {},
          //   child: Text('Elevated Button'),
          // ),
        ),
      ),
    );
  }
}
