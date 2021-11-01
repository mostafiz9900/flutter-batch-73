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
    return Scaffold(
      appBar: AppBar(
        title: Text('home page'),
      ),
      body: Column(
        children: [
          Text('Hello  Flutter'),
          CreateAnimatedContainer(),
        ],
      ),
    );
  }
}

class CreateAnimatedContainer extends StatefulWidget {
  CreateAnimatedContainer({Key? key}) : super(key: key);

  @override
  _CreateAnimatedContainerState createState() =>
      _CreateAnimatedContainerState();
}

class _CreateAnimatedContainerState extends State<CreateAnimatedContainer> {
  bool selected = false;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selected = !selected;
        });
      },
      child: AnimatedContainer(
        height: selected ? 100.0 : 200.0,
        width: selected ?  200.0 : 100.0,
        alignment: selected ? Alignment.center : Alignment.topCenter,
        color:  selected ? Colors.amber.shade200 : Colors.red.shade400,
        duration: Duration(seconds: 10),
        curve: Curves.easeInOutQuart,
        child: FlutterLogo(),
      ),
    );
  }
}
