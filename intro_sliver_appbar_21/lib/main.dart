import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
     bool _pinned = true;
  bool _snap = false;
  bool _floating = true;
    return Scaffold(
        body: CustomScrollView(
      slivers: <Widget>[
       SliverAppBar(
            pinned: _pinned,
            snap: _snap,
            floating: _floating,
            expandedHeight: 160.0,
            flexibleSpace: const FlexibleSpaceBar(
              title: Text('SliverAppBar'),
              background: FlutterLogo(),
            ),
          ),
      
        SliverList(
          
          delegate: SliverChildBuilderDelegate(
          (contex, index) {
            return ListTile(
              
              leading: Text('$index'),
              title: Text('Mostafiz'),
              subtitle: Text('9384890234'),
              trailing: Icon(Icons.phone),
            
            
            );
          },
          childCount: 30
          ),
        ),
      ],
    ));
  }
}
