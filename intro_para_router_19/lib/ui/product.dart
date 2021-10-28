import 'package:flutter/material.dart';
import 'package:intro_para_router_19/ui/models/argument_page.dart';

class ProductPage extends StatelessWidget {
  static const String productRouter = '/product';

  @override
  Widget build(BuildContext context) {
    ArgumentPage arg = ModalRoute.of(context)?.settings.arguments as ArgumentPage;
    return Scaffold(
      appBar: AppBar(
        title: Text('Product Page'),
      ),
      body: Column(
        children: [
          Text('This is product page'),
          Text('${arg.title}'),
          Text('${arg.message}'),
          
        ],
      ),
    );
  }
}
