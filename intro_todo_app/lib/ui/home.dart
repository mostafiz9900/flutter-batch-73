import 'package:flutter/material.dart';
import 'package:intro_todo_app/models/user.dart';
import 'package:intro_todo_app/services/api_services.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<User> userList = [];
  bool? isLoading;
  @override
  void initState() {
    super.initState();
    isLoading = true;
    
       ApiServices.getUserList().then((user) {
         setState(() {
              isLoading = false;
              userList = user;
         });
   
   
    });
   
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(isLoading! ? 'Loading...' : 'User'),
      ),
      body: ListView.builder(
        itemCount: userList.length,
        itemBuilder: (context, index) {
          User user = userList[index];
          return ListTile(
            leading: Text('${user.id}'),
            title: Text('${user.name}'),
          );
        },
      ),
    );
  }
}
