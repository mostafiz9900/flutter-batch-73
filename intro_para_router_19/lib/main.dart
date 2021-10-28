import 'package:flutter/material.dart';
import 'package:intro_para_router_19/ui/product.dart';
import 'ui/my_home_page.dart';

void main() {
  runApp(MyApp());
}
 class MyApp extends StatelessWidget {
   const MyApp({ Key? key }) : super(key: key);
 
   @override
   Widget build(BuildContext context) {
     return MaterialApp(
      //  home: MyHomePage(),
      initialRoute: '/',
       routes: <String, WidgetBuilder>{
         '/':(context)=>MyHomePage(),
         ProductPage.productRouter:(context)=>ProductPage(),
       },

       
     );
   }
 }

