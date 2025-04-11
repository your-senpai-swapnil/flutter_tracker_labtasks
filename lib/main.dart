import 'package:flutter/material.dart';

void main() {
  runApp(MyCustomApp());
}

class MyCustomApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Custom AppBar',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: EdgeInsets.all(8.0),
          child: Image.asset('assets\Anime Logo.jpeg', fit: BoxFit.cover), 
        ),
        title: Text('My custom App'),
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              
              print('Search tapped');
            },
          ),
          IconButton(
            icon: Icon(Icons.more_vert),
            onPressed: () {
              
              print('Menu tapped');
            },
          ),
        ],
        elevation: 6,
        shadowColor: Colors.black54,
        backgroundColor: Colors.deepPurple,
      ),
      body: Center(
        child: Text('Welcome to the app!'),
      ),
    );
  }
}
