
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  CustomButton(
      {Key? key,
      required this.onClick,
      required this.nameText,
      required this.icon})
      : super(key: key);
  VoidCallback onClick;
  Widget nameText;
  Icon icon;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onClick,
      child: Container(
        margin: EdgeInsets.all(10.0),
        padding: EdgeInsets.all(12.0),
        decoration: BoxDecoration(
            color: Colors.amber, borderRadius: BorderRadius.circular(22.0)),
        child: ListTile(
            title: nameText,
            trailing: CircleAvatar(
              child: icon,
            )),
      ),
    );
  }
}