import 'package:flutter/material.dart';
import 'package:intro_todo_app/models/count.dart';
import 'package:provider/provider.dart';
import 'ui/home2.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      
      theme: ThemeData(        
        primarySwatch: Colors.blueGrey,
      ),
      home: ChangeNotifierProvider<CountModel>(
// it will not redraw the whole widget tree anymore
create: (BuildContext context) => CountModel(),
child: Home2()),
    );
  }
}
