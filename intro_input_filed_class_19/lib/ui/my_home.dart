import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  TextEditingController userNameCont = TextEditingController();
  TextEditingController userPassWordCont = TextEditingController();
  String userName = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: userNameCont,
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                //  hintText: 'User Name',
                label: Text('Name'),
                prefixIcon: Icon(Icons.account_balance),
                suffixIcon: Icon(Icons.search),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: userPassWordCont,
              obscureText: true,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                //  hintText: 'User Name',
                label: Text('password'),
                prefixIcon: Icon(Icons.password),
                suffixIcon: Icon(Icons.password_outlined),
              ),
            ),
          ),
          ElevatedButton(
              onPressed: () {
                setState(() {
                  userName = userNameCont.text;
                });
                print(userNameCont.text);
                print(userPassWordCont.text);
              },
              child: Text('Sign In')),
          Text('This is ${userName}'),
        ],
      ),
    );
  }
}
