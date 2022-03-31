
import 'package:flutter/material.dart';

class MyAppDrawer extends StatelessWidget {
  const MyAppDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              child:FlutterLogo(),
              decoration: BoxDecoration(
                color: Colors.amber,
                borderRadius: BorderRadius.only(bottomLeft: Radius.circular(15.0),bottomRight: Radius.circular(15.0))

              ),
              curve: Curves.fastLinearToSlowEaseIn,
              duration: Duration(seconds: 2),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title:Text('Home'),
            
            ),
            ListTile(
              leading: Icon(Icons.rate_review),
              title:Text('Rating'),
            
            ),ListTile(
              leading: Icon(Icons.info),
              title:Text('About'),
            
            ),
          
          ],
        ),
      );
  }
}