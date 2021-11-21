import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import 'ui/custom_button.dart';

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
      home: HomeScreen2(),
    );
  }
}

class HomeScreen2 extends StatelessWidget {
  HomeScreen2({Key? key}) : super(key: key);

  String url = 'http://flutter.dev';
  String urlEmail = 'mailto:smith@example.org?subject=News&body=New%20plugin';
  String urlPhone = 'tel:+1 555 010 999';
  String urlSms = 'sms:5550101234';

  void getUrlLauncher(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('URL Launcher')),
      body: Center(
          child: Column(
        children: [
          CustomButton(
              onClick: () {
                getUrlLauncher(url);
              },
              nameText: Text('Open URL in the default browser'),
              icon: Icon(Icons.web)),
          CustomButton(
              onClick: () {
                getUrlLauncher(urlPhone);
              },
              nameText: Text('Make a phone call to'),
              icon: Icon(Icons.phone)),
          CustomButton(
              onClick: () {
                getUrlLauncher(urlEmail);
              },
              nameText: Text('Create email to'),
              icon: Icon(Icons.email)),
          CustomButton(
              onClick: () {
                getUrlLauncher(urlSms);
              },
              nameText: Text('Send an SMS message to'),
              icon: Icon(Icons.sms)),
        ],
      )),
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  late TabController _controller;
  final List<Map<String, Object>> people = [
    {'name': 'Mostafiz'},
     {'address': 'Mostafiz'},
      {'phone': 'Mostafiz'}
  ];
  @override
  void initState() {
    super.initState();
    _controller = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('TabBar Wedget'),
          bottom: TabBar(
            controller: _controller,
            indicatorColor: Colors.red,
            indicatorWeight: 5.0,
            labelColor: Colors.white,
            unselectedLabelColor: Colors.amber.shade300,
            tabs: [
              Tab(
                child: Text('Home'),
                icon: Icon(Icons.home),
              ),
              Tab(
                child: Text('About'),
                icon: Icon(Icons.details),
              ),
              Tab(
                child: Text('Product'),
                icon: Icon(Icons.card_giftcard),
              ),
            ],
          ),
        ),
        body: TabBarView(controller: _controller, children: [
          InteractiveViewer(
            boundaryMargin: const EdgeInsets.all(20.0),
            minScale: 0.1,
            maxScale: 1.6,
            // constrained: false,
            // scaleEnabled: false,

            child: Container(
              margin: EdgeInsets.all(10.0),
              padding: EdgeInsets.all(10.0),
              color: Color(0xFFAFEB0A),
              height: 300.0,
              width: double.infinity,
              child: InteractiveViewer(
                panEnabled: false, // Set it to false to prevent panning.
                boundaryMargin: EdgeInsets.all(80),
                minScale: 0.5,
                maxScale: 4,
                child: FlutterLogo(size: 200),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.all(10.0),
            padding: EdgeInsets.all(10.0),
            color: Color(0xFF0BB9B1),
            height: 300.0,
            width: double.infinity,
          ),
          Container(
            margin: EdgeInsets.all(10.0),
            padding: EdgeInsets.all(10.0),
            color: Color(0xFFE2C107),
            height: 300.0,
            width: double.infinity,
          ),
        ]));
  }
}

class MyPage extends StatelessWidget {
  MyPage({Key? key}) : super(key: key);
  final String url = 'https://flutter.dev';
  final String smsUrl = 'sms:01521337000';
  final String phoneUrl = 'tel:+880 1521337000';
  final String gmaiUrl =
      'mailto:codecando@example.org?subject=News&body=New%20plugin';
  // void getUrlLauncher(String url) async {
  //   if (await canLaunch(url)) {
  //     await launch(url);
  //   } else {
  //     throw 'Could not launch $url';
  //   }
  // }

  final ButtonStyle _customButtonStyle = ElevatedButton.styleFrom(
      primary: Colors.amber,
      padding: EdgeInsets.all(15.0),
      minimumSize: Size(double.infinity, 20.0)
      // minimumSize:
      );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Url Launcher'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.all(10.0),
            child: ElevatedButton(
                onPressed: () {
                  // getUrlLauncher(url);
                },
                child: Text('Go To Web'),
                style: _customButtonStyle),
          ),
          Container(
            margin: EdgeInsets.all(10.0),
            child: ElevatedButton(
              onPressed: () {
                // getUrlLauncher(smsUrl);
              },
              child: Text('Send Sms'),
              style: _customButtonStyle,
            ),
          ),
          Container(
            margin: EdgeInsets.all(10.0),
            child: ElevatedButton(
              onPressed: () {
                // getUrlLauncher(phoneUrl);
              },
              child: Text('Make Call'),
              style: _customButtonStyle,
            ),
          ),
          Container(
            margin: EdgeInsets.all(10.0),
            child: ElevatedButton(
              onPressed: () {
                // getUrlLauncher(gmaiUrl);
              },
              child: Text('Send Email'),
              style: _customButtonStyle,
            ),
          ),
        ],
      ),
    );
  }
}

/* 

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
  String url ='https://flutter.dev';
  String smsUrl = 'sms:01521337000';
  String phoneUrl = 'tel:+880 1521337000';
  String gmaiUrl =
      'mailto:codecando@example.org?subject=News&body=New%20plugin';
  void _getUrlLauncher(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  late TabController tabController;
  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 2, vsync: this);
  }

  List<Widget> _tabList = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      appBar: AppBar(
          title: Text(widget.title),
          bottom: TabBar(
              controller: tabController,
              indicatorColor: Colors.red,
              indicatorWeight: 5.0,
              labelColor: Colors.amber,
              unselectedLabelColor: Colors.white,
              tabs: [
                Tab(
                  child: Text(
                    'Home',
                  ),
                  icon: Icon(Icons.home),
                ),
                Tab(
                  child: Text(
                    'About',
                  ),
                  icon: Icon(Icons.add_box),
                )
              ])),
      body: TabBarView(
        controller: tabController,
        children: [
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                _CustomGlobalWidget(
                  onClick: () {
                    _getUrlLauncher(url);
                  },
                  customIcon: Icon(Icons.web),
                  name: 'web',
                ),
                _CustomGlobalWidget(
                  onClick: () {
                    _getUrlLauncher(phoneUrl);
                  },
                  customIcon: Icon(Icons.phone),
                  name: 'Phone',
                ),
                _CustomGlobalWidget(
                  onClick: () {
                    _getUrlLauncher(smsUrl);
                  },
                  customIcon: Icon(Icons.sms),
                  name: 'SMS',
                ),
                _CustomGlobalWidget(
                  onClick: () {
                    _getUrlLauncher(gmaiUrl);
                  },
                  customIcon: Icon(Icons.email),
                  name: 'Email',
                ),
              ],
            ),
          ),
          Text('About Page'),
        ],
      ),

      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

class _CustomGlobalWidget extends StatelessWidget {
  _CustomGlobalWidget(
      {Key? key,
      required this.onClick,
      required this.customIcon,
      required this.name})
      : super(key: key);
  VoidCallback onClick;
  Widget customIcon;
  String name;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onClick,
      child: Container(
        margin: EdgeInsets.all(5.0),
        padding: EdgeInsets.all(8.0),
        decoration: BoxDecoration(
            color: Color(0xFFC2D60B),
            borderRadius: BorderRadius.circular(20.0)),
        child: ListTile(
            trailing: CircleAvatar(
              child: customIcon,
            ),
            title: Text(
              '$name'.toUpperCase(),
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
            )),
      ),
    );
  }
}
 */
