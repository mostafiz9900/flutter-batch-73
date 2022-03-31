import 'package:flutter/material.dart';
import 'package:intro_http_get/ui/user_view.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {

  int selectIndex = 0;
  @override
  void initState() {
    super.initState();
  
  }

  List<Widget> showWidget = <Widget>[
    Text('Home Page'),
    Text('about Page'),
    UserView(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('CodeCanDo E-Com'),
      ),
      body: showWidget.elementAt(selectIndex),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectIndex,
        backgroundColor: Colors.amber.shade500,
        selectedItemColor: Colors.white,
        onTap: (value) {
          setState(() {
            selectIndex = value;
          });
          print(value);
        },
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shop),
            label: 'Product',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_box),
            label: 'User',
          ),
        ],
      ),
    );
  }
}
