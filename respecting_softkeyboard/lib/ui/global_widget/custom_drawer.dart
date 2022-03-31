
import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(  
  child: ListView(  
    padding: EdgeInsets.zero,  
    children: <Widget>[  
      DrawerHeader(  
        child: Text('Drawer Header'),  
        decoration: BoxDecoration(  
          color: Colors.amber,  
        ),  
      ),  
      ListTile(  
        leading: Icon(Icons.add),
        title: Text('Item 1'),  
        onTap: () {  
          // Update the state of the app.  
          // ...  
        },  
      ),  
      ListTile(  
        title: Text('Item 2'),  
        onTap: () {  
          // Update the state of the app.  
          // ...  
        },  
      ),  
    ],  
  ), 
        );
  }
}