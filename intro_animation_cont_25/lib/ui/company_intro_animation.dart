import 'package:flutter/animation.dart';

class CompanyIntroAnimation {
  CompanyIntroAnimation(this.controller)
      : bgdropOpacity = Tween(begin: 0.0, end: 1.0).animate(CurvedAnimation(
            parent: controller,
            curve: Interval(0.00, 0.5000, curve: Curves.fastOutSlowIn))),

            bgdropBlur=Tween(begin:0.0,end: 5.0 ).animate(
               CurvedAnimation(parent: controller, curve: Interval(0.000, 0.800,
               curve: Curves.ease
               ))
            )
            ;

  final AnimationController controller;
  final Animation<double> bgdropOpacity;
  final Animation<double> bgdropBlur;
}
