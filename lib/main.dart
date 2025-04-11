import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Strawhats',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  void _navigateTo(BuildContext context, Widget screen) {
    Navigator.of(context).push(
      MaterialPageRoute(builder: (context) => screen),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Strawhats')),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(color: Colors.blue),
              child: Text(
                'Menu',
                style: TextStyle(color: Colors.white, fontSize: 24),
              ),
            ),
            ListTile(
              leading: Icon(Icons.looks_one),
              title: Text('Crew'),
              onTap: () {
                Navigator.pop(context);
                _navigateTo(context, ScreenA());
              },
            ),
            ListTile(
              leading: Icon(Icons.looks_two),
              title: Text('Captain'),
              onTap: () {
                Navigator.pop(context);
                _navigateTo(context, ScreenB());
              },
            ),
            ListTile(
              leading: Icon(Icons.looks_3),
              title: Text('Ship'),
              onTap: () {
                Navigator.pop(context);
                _navigateTo(context, ScreenC());
              },
            ),
          ],
        ),
      ),
      body: Center(child: Text('This is the Straw Hats App')),
    );
  }
}

class ScreenA extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Strawhats Crew')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/images/first.png', width: 200, height: 150),
            SizedBox(height: 16),
            Text(
              'This is Strawhats Crew',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}

class ScreenB extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Strawhats Captain')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/images/luffy.jpeg', width: 200, height: 150),
            SizedBox(height: 16),
            Text(
              'This is Straw Hats captain',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}

class ScreenC extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Strawhats Ship')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/images/3.jpg', width: 200, height: 150),
            SizedBox(height: 16),
            Text(
              'This is Straw Hats Ship',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
