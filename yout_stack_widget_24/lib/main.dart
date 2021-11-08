import 'dart:html';

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
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AlertDialog _alertDialog = AlertDialog(
      titlePadding: EdgeInsets.all(0.0),
      title: Container(
          padding: EdgeInsets.all(10.0),
          color: Colors.blueGrey,
          child: Text('Save Data')),
      content: Text('are you save data?'),
      actions: [
        ElevatedButton(onPressed: () {}, child: Text('Yes')),
        ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text('No'))
      ],
    );
    return Scaffold(
      appBar: AppBar(
        title: Text('Stack Layout'),
      ),
      body: Center(
        child: Column(
          children: [
              SizedBox(
              height: 100.0,
            ),
            Stack(
              alignment: Alignment.center,
              clipBehavior: Clip.none,
              children: [
                Container(
                  height: 300.0,
                  width: 300.0,
                  color: Colors.blueAccent,
                ),
                Container(
                  padding: EdgeInsets.only(top: 40.0),
                  height: 280.0,
                  width: 280.0,
                  color: Colors.amber.shade200,
                  child: Column(
                    children: [
                      Text('Name: Mostafizur'),
                      Text('Email: mostafiz9900@gmail.com'),
                    ],
                  ),
                ),
                Positioned(
                    top: -50.0,
                    child: Container(
                      width: 90.0,
                      height: 90.0,
                      decoration: BoxDecoration(
                          color: Colors.grey.shade500,
                          borderRadius: BorderRadius.circular(100.0),
                          image: DecorationImage(
                              image: NetworkImage(
                            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT4lQHH4lXf8gt-fEpRHuQPB4N8l5VgYHYezg&usqp=CAU',
                          ))),
                    ))
              ],
            ),
           /*  SizedBox(
              height: 20.0,
            ),
            ElevatedButton(
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (context) {
                      return _alertDialog;
                    },
                  );
                },
                child: Text('Save')) */
          ],
        ),
      ),
    );
  }
}
