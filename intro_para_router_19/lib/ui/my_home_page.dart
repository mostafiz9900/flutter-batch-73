
import 'package:flutter/material.dart';
import 'package:intro_para_router_19/ui/models/argument_page.dart';
import 'package:intro_para_router_19/ui/product.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar:AppBar(title: Text('Home Page'),),
      body: Column(
        children: [
          Text('Hello Flutter'),
          ElevatedButton(
            onPressed: () => Navigator.pushNamed(
              context,
            ProductPage.productRouter,
            arguments: ArgumentPage(
              title: "Home Page To Product Page",
              message: "This is parameter router"
            )
            ),
             child: Text('Go To Product Page')
             )
        ],
      )
    );
  }
}
