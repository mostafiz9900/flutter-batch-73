import 'package:flutter/material.dart';
import 'package:intro_animation_cont_25/anim/chain_anim.dart';
import 'package:intro_animation_cont_25/ui/company_animation.dart';
import 'package:flutter/cupertino.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Animation Controller'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;

  late Animation<double> animation;
  // late Animation<Color> animationColor;

  @override
  void initState() {
    super.initState();
    controller = AnimationController(
        vsync: this, duration: Duration(milliseconds: 1800));
    // animationColor =ColorTween(begin: Color(0xFFad1457), end: Color(0xFF4a148c));

    animation = CurvedAnimation(parent: controller, curve: Curves.fastOutSlowIn)
      // animation=Tween(begin: 0.0, end: 50.0).animate(controller)
      ..addStatusListener((status) {
        if (status == AnimationStatus.completed) {
          controller.reverse();
        } else if (status == AnimationStatus.dismissed) {
          controller.forward();
        }
      })
      ..addListener(() {
        setState(() {
          debugPrint('Runnig ${controller.value}');
        });
      });
    // animation.addListener(() {
    //   setState(() {
    //     debugPrint('Runnig ${controller.value}');
    //   });
    // });

    controller.forward();
  }

  @override
  void dispose() {
    super.dispose();
    // controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body:
            /*  TweenAnimationBuilder<Color>(
          tween: Tween<Color>(begin: Colors.red, end: Colors.green),
          duration: const Duration(seconds: 4),
          builder: (BuildContext context, Color color, Widget? child) {
            return Container(color: color);
          },
        )
 */
            ChainAnim(
          animation: animation,
        
        )
        // Center(child:
        //   Text('Hello Flutter',style: TextStyle(fontSize: 20.0 * animation.value +30),),
        // ),
        );
  }
}
