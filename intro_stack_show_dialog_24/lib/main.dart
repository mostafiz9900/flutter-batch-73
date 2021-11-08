import 'package:flutter/foundation.dart';
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
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AlertDialog _alertDilog=AlertDialog(
      titlePadding: EdgeInsets.all(0),
      title: Container(
        alignment: Alignment.topLeft,
        padding:EdgeInsets.all(5.0),
        color: Colors.blueGrey,
        child: Text('Conform')
        ),
      content: Text('Are you conform'),
      actions: [
        ElevatedButton(onPressed: () {
          
        }, child: Text('ok')
        ),
         ElevatedButton(onPressed: () {
          
        }, child: Text('No')
        ),
      ],
    );
    return Scaffold(
      appBar: AppBar(
        title: Text('How to use Stack widget in flutter'.toUpperCase()),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Stack(
                alignment: Alignment.center,
                // fit: StackFit.passthrough,
                //  textDirection: TextDirection.ltr,
                clipBehavior: Clip.none,
      
                children: [
                  Container(
                    height: 150.0,
                    width: 150.0,
                    color: Colors.amber,
                  ),
                  Container(
                    height: 130.0,
                    width: 130.0,
                    color: Colors.red,
                  ),
                  Container(
                    height: 110.0,
                    width: 110.0,
                    color: Colors.black,
                  ),
                  Positioned(
                    top: 70.0,
                    child: Text(
                      'Mostafizur',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  Positioned(
                    top: -50.0,
                    child: CircleAvatar(
                      backgroundColor: Colors.blueGrey,
                      radius: 40.0,
                      child: Icon(Icons.account_circle,size: 40.9,),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 20.0,
              ),
              ElevatedButton(
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (context) =>_alertDilog/*  AlertDialog(
                        title: Text('Alert dilog'),
                        content: Text('Do you want tq exit?'),
                        actions: [
                          ElevatedButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              child: Text('No')),
                          ElevatedButton(onPressed: () {}, child: Text('Yes')),
                        ],
                      ) */,
                    );
                  },
                  child: Text('Show')),
      SizedBox(
                height: 80.0,
              ),
                  Stack(
                    alignment:Alignment.center,
                    clipBehavior: Clip.none,
                    children: [
                      Container(
                        height: 300.0,
                        width: 300.0,
                        color:Colors.blueGrey
                      ),
                       Container(
                         padding: EdgeInsets.only(top:50.0),
                        height: 280.0,
                        width: 280.0,
                        color:Colors.amber,
                        child: Column(
                          children: [
                            Text('Name: Mostafizur'),
                            Text('Address: Dhaka'),
                          ],
                        ),
                      ),
                      Positioned(
                        top: -50,
                        child:Container(
                          padding: EdgeInsets.all(2.0),
                          margin: EdgeInsets.all(2.0),
                         
                          width: 100.0,
                          height: 100.0,
                                               
                          decoration:BoxDecoration(
                            color: Colors.blueGrey,
                            borderRadius: BorderRadius.circular(90.0),
                            image:DecorationImage(
                              image: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT4lQHH4lXf8gt-fEpRHuQPB4N8l5VgYHYezg&usqp=CAU',
                              
                              ),
                              // fit: BoxFit.contain
                            )
                          )
      
                  
                        )
                        
                        ),
                    ],
                  )
            ],
          ),
        ),
      ),
    );
  }
}
