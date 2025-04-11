import 'package:flutter/material.dart';
import 'custom_card.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final List<Map<String, String>> items = [
    {
      'image': 'assets/images/first.png',
      'title': 'One Piece',
      'subtitle': 'Luffy & Friends',
      'description': 'Join the adventure with Straw Hat Pirates!'
    },
    {
      'image': 'assets/images/luffy.jpeg',
      'title': 'Luffy Gear 5',
      'subtitle': 'Awakened Powers',
      'description': 'Witness the incredible transformation.'
    },
    {
      'image': 'assets/images/3.jpg',
      'title': 'Sunny Ship',
      'subtitle': 'Sailing the seas',
      'description': 'Thousand Sunny, the heart of the crew.'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Custom Card List',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: Scaffold(
        appBar: AppBar(title: Text('Animated Cards List')),
        body: ListView.builder(
          itemCount: items.length,
          itemBuilder: (context, index) {
            final item = items[index];
            return CustomCard(
              imagePath: item['image']!,
              title: item['title']!,
              subtitle: item['subtitle']!,
              description: item['description']!,
            );
          },
        ),
      ),
    );
  }
}
