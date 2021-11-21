import 'package:flutter/material.dart';

class ResponsiveWidget extends StatelessWidget {
  final Widget? mobile;
  final Widget? tab;
  final Widget? desktop;

  const ResponsiveWidget({Key? key, this.mobile, this.tab, this.desktop}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
