import 'package:flutter/material.dart';
import 'package:intro_todo_app/models/count.dart';
import 'package:provider/provider.dart';

class Home2 extends StatelessWidget {
  const Home2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final counter = Provider.of<CountModel>(context);
    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 150.0,),
            Text('${counter.count}'),
            SizedBox(height: 50.0,),
            ElevatedButton(
                onPressed: () {
                  counter.increment();
                },
                
                child: Text('   +  ')),
                SizedBox(height: 50.0,),
                 ElevatedButton(
                onPressed: () {
                  counter.decreaseValue();
                },
                child: Text('   -  '))
          ],
        ),
      ),
    );
  }
}
