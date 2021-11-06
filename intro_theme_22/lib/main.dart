import 'package:flutter/material.dart';

final ThemeData _appTheme = _buildAppTheme();

ThemeData _buildAppTheme() {
  final ThemeData base = ThemeData.dark();
  return base.copyWith(
//  brightness: Brightness.dark,
      // primarySwatch: Colors.amber,
      primaryColor: Color(0xFF818181),
      elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
              primary: Color(0xFF7e3ff2),
              textStyle: TextStyle(fontSize: 35.0))),
      floatingActionButtonTheme:
          FloatingActionButtonThemeData(backgroundColor: Colors.orange.shade500),
      textTheme: _buildTextTheme(base.textTheme),
      
      );
}

TextTheme _buildTextTheme(TextTheme base) {
  return base.copyWith(
    bodyText1: base.bodyText1?.copyWith(
      fontSize:20.0 
    ),
    bodyText2: base.bodyText2?.copyWith(
      fontSize:50.0 ,
      fontWeight: FontWeight.bold,
      color: Colors.red.shade100,
     
    )
    
    

  );
}

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
      debugShowCheckedModeBanner: false,
      theme: _appTheme,
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      appBar: AppBar(
        title: Text('Home Page'),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Hello Flutter'),
            Text('A paragraph is a series of sentences that are organized and coherent, and are all related to a single topic. Almost every piece of writing you do that is longer than a few sentences should be organized into paragraphs. ... One of the most important of these is a topic sentence.',
            style: Theme.of(context).textTheme.bodyText1,
            ),
            SizedBox(
              height: 30.0,
            ),
              Text('Name : Mostafizur Rahman',style: Theme.of(context).textTheme.bodyText1,),
            SizedBox(
              height: 30.0,
            ),
            ElevatedButton(onPressed: () {}, child: Text('Save')),

          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
