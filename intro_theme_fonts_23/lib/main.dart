import 'package:flutter/material.dart';

final ThemeData _appTheme = _buildTheme();

ThemeData _buildTheme() {
  final ThemeData base = ThemeData.dark();
  return base.copyWith(
    primaryColor: Color(0xFF311B92),
    secondaryHeaderColor: Color(0xFF175205),
    // scaffoldBackgroundColor: Color(0xFFE8EAF6),
    elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
            primary: Color(0xFFFFAB00), textStyle: TextStyle())),
    floatingActionButtonTheme:
        FloatingActionButtonThemeData(backgroundColor: Color(0xFF3a712a)),
    textTheme: _buildTextTheme(base.textTheme),
    // primarySwatch: Colors.blueGrey,
  );
}

TextTheme _buildTextTheme(TextTheme base) {
  return base.copyWith(
bodyText1: base.bodyText1?.copyWith(
  color: Colors.amber,
  fontSize: 60,

),
bodyText2: base.bodyText2?.copyWith(
  fontSize: 40.0,
  fontFamily: 'Lobster'
)
  ).apply(
     fontFamily: 'Lobster',

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
      theme: _appTheme,
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Theme.of(context).primaryColor,
      appBar: AppBar(
        title: Text('Home Page'),
      ),
      body: SingleChildScrollView(
        child: Center( 
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Hello Flutter ',
                style:Theme.of(context).textTheme.bodyText1
              ),
               Text(
                'Find Info On Health Questions. Your Health Journey Starts Today. Search Now. Trustworthy Sources. ',
                // style:Theme.of(context).textTheme.headline1
              ),
              SizedBox(
                height: 20.0,
              ),
              ElevatedButton(onPressed: () {}, child: Text('Save Button')),
              SizedBox(
                height: 10,
              ),
              ElevatedButton(onPressed: () {}, child: Text('Login Button'))
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
      ),
    );
  }
}
