import 'package:flutter/material.dart';

class BasicAnimationPage extends StatefulWidget {
  BasicAnimationPage({Key? key}) : super(key: key);

  @override
  _BasicAnimationPageState createState() => _BasicAnimationPageState();
}

class _BasicAnimationPageState extends State<BasicAnimationPage> {
  var animate = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: AnimatedContainer(
          height: animate ? 200 : 40,
          width: animate ? 200 : 40,
          color: animate ? Colors.blue : Colors.red,
          duration: Duration(milliseconds: 500),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.transform_outlined),
        onPressed: () {
          setState(() {
            animate = !animate;
          });
        },
      ),
    );
  }
}