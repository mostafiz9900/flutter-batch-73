import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:intro_animation_cont_25/models/company.dart';
import 'package:intro_animation_cont_25/ui/company_intro_animation.dart';

class CompanyPage extends StatelessWidget {
   CompanyPage({
      required this.company,
      required AnimationController controller})
      : animation = CompanyIntroAnimation(controller);

  final Company company;
  final CompanyIntroAnimation animation;

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: [
        Opacity(
          opacity: animation.bgdropOpacity.value,
        child: Image.asset('assets/images/Tshirt5.jpg',fit: BoxFit.cover,),
        ),
        BackdropFilter(filter: ImageFilter.blur(
          sigmaX: animation.bgdropBlur.value,
          sigmaY:animation.bgdropBlur.value 
        ))
      ],

    );
  }
}
