import 'package:flutter/material.dart';
import 'package:flutter/animation.dart';
import 'package:intro_animation_cont_25/repo/company_repo.dart';
import 'package:intro_animation_cont_25/ui/company_page.dart';

class CompanyAnimation extends StatefulWidget {
  const CompanyAnimation({Key? key}) : super(key: key);

  @override
  _CompanyAnimationState createState() => _CompanyAnimationState();
}

class _CompanyAnimationState extends State<CompanyAnimation>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
        vsync: this, duration: Duration(milliseconds: 1780));

    _controller.forward();
 
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return CompanyPage(company: CompanyRepo.company, controller: _controller);
  }
}
