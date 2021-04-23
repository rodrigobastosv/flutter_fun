import 'package:flutter/material.dart';

class BasicScaffoldPage extends StatelessWidget {
  const BasicScaffoldPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Basic Scaffold'),
      ),
      body: Center(
        child: Text('Hello there!'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.sentiment_satisfied_alt_sharp),
      ),
    );
  }
}