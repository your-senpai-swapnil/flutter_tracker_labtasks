import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String _text = "Press the button";
  int _pressCount = 0;

  void _changeText() {
    setState(() {
      _text = "Button Pressed";
      _pressCount++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Button Press Task')),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                _text,
                style: TextStyle(fontSize: 24),
              ),
              SizedBox(height: 20),
              Text(
                'Button pressed: $_pressCount times',
                style: TextStyle(fontSize: 18),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: _changeText,
                child: Text('Press Me'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
