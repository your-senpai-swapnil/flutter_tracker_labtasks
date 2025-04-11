import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Strawhats',
      home: Scaffold(
        appBar: AppBar(title: Text('strawhats')),
        body: Center(child: Image.asset('assets/11.jpeg')),
      ),
    );
  }
}
