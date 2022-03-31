
import 'package:flutter/material.dart';
import 'package:intro_provider_1/models/count.dart';
import 'package:provider/provider.dart';

class Home extends StatelessWidget {
  const Home({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
   final countData= Provider.of<Count>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('Provider 6.0.1'),
      ),
      body: Center(
        child: Column(        
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times: use provider',
            ),
            Text(
              '${countData.value}',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FloatingActionButton(
            onPressed: countData.increment,
            tooltip: 'Increment',
            child: const Icon(Icons.add),
          ),
          SizedBox(width: 25.0,),
          FloatingActionButton(
            onPressed: countData.decincrement,
            tooltip: 'Increment',
            child: const Icon(Icons.remove),
          ),
        ],
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
  }
