import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_fun/pages/pages.dart';

void main() {
  //timeDilation = 3.0;
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Showcase(),
    );
  }
}

class Showcase extends StatefulWidget {
  Showcase({Key? key}) : super(key: key);

  @override
  _ShowcaseState createState() => _ShowcaseState();
}

class _ShowcaseState extends State<Showcase> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        children: [
          BasicScaffoldPage(),
          BasicAnimationPage(),
          BasicHeroAnimationPage(),
        ],
      ),
    );
  }
}

