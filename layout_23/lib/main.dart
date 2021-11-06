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
        primarySwatch: Colors.blueGrey
      ),
      home: const MyHomePage(),
    );
  }
}


class MyHomePage extends StatelessWidget {
  const MyHomePage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Layout'),),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                  Image.network('https://media.istockphoto.com/photos/delicious-homemade-hamburger-and-french-fries-picture-id1254672762?b=1&k=20&m=1254672762&s=170667a&w=0&h=nKrG40G2jj9O8wzJ8wDD2zmUKNp00mcdVWK_f_zixug='),
                  Positioned(
                    top: 20.0,
                    left: 20.0,
                    child: Text('Fluter Demo',style: TextStyle(color: Colors.white),),
                  
                    ),
                    Positioned(
                      bottom: 20.0,
                      left: 10.0,
                      child: Icon(
                        Icons.bus_alert_sharp,
                      color: Colors.white,
                      size: 40.0,
                      ))
              ],
            ),
      
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('All Bangladesh burger',
                  style: TextStyle(fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                  
                  ),
                  ),
                  Icon(
                      Icons.favorite,
                    ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
      
              children: [
                Column(
                  children: [
                    IconButton(
                      onPressed: () {
                        
                      }, 
                      icon: Icon(
                        Icons.phone,
                        color: Colors.amber,
                      
                      ),
                      
                      ),
                      Text('Phone')
                  ],
                ),
                
                   Column(
                  children: [
                    IconButton(
                      onPressed: () {
                        
                      }, 
                        icon: Icon(
                            Icons.directions,
                             color: Colors.amber,
                          ),
                                      
                      ),
                      Text('Direction'),
                       
                  ],
                ),
                  Column(
                  children: [
                    IconButton(
                      onPressed: () {
                        
                      }, 
                      icon: Icon(
                        Icons.share,
                         color: Colors.amber,
                      ),
                      
                      ),
                      Text('Share')
                  ],
                ),
              ],
            ),
      
      
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('A paragraph is a series of sentences that are organized and coherent, and are all related to a single topic. Almost every piece of writing you do that is longer than a few sentences should be organized into paragraphs. ... One of the most important of these is a topic sentence.',
              
              textDirection: TextDirection.ltr,
              textAlign: TextAlign.justify,
              style: TextStyle(
      
                textBaseline: TextBaseline.ideographic,
                wordSpacing: 5.90
              ),
              
              ),
            ),
            
      Container(

        height: 10,
        width: double.infinity,
        color: Colors.red,
      )
          ],
        ),
      ),
      
    );
  }
}