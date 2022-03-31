import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      appBar: AppBar(),
      body: customWidget
    ),
  ));
}

var customWidget=Column(         
        children: [
          Text('Name: Mostafizur'),
          Text('Email: mostafiz@gmail.com'),
          Text('Address: Brahmanbaria'),
Container(  
    width: 200.0,  
    height: 100.0,  
    color: Colors.green,   
    child: Text("Hello! I am in the container widget", style: TextStyle(fontSize: 25)),  
)  ,

Container(  
    width: 200.0,  
    height: 100.0,  
    color: Colors.green,   
    padding: EdgeInsets.all(35),  
    margin: EdgeInsets.all(20),  
    alignment: Alignment.bottomRight,  
    child: Text("Hello! I am in the container widget", style: TextStyle(fontSize: 25)),  
)  ,

Container(  
          padding: EdgeInsets.all(35),  
          margin: EdgeInsets.all(20),  
          decoration: BoxDecoration(  
            border: Border.all(color: Colors.black, width: 4),  
            borderRadius: BorderRadius.circular(8),  
            boxShadow: [  
              new BoxShadow(color: Colors.green, offset: new Offset(6.0, 6.0),),  
            ],  
          ),  
          child: Text("Hello! I am in the container widget decoration box!!",  
              style: TextStyle(fontSize: 30)),  
        ),  
       

        ],
      );