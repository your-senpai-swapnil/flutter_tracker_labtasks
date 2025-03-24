import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Styling the texts',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Large Text with Bold and Red color
              Text(
                'Giants were always larger than humans'
                    ' so this is a large text',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.red,
                  height: 5,
                ),
              ),
              SizedBox(height: 10),

              // Medium Text with Italic style
              Text(
                'I always wondered if italic font was named after Italy'
                    ' So this is Italic font',
                style: TextStyle(
                  fontSize: 24,
                  fontStyle: FontStyle.italic,
                  color: Colors.blue,
                  height: 5,
                ),
              ),
              SizedBox(height: 10),

              // Small Text with normal style
              Text(
                'We are really small if compared to the universe'
                    ' so this is small text ig!',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.normal,
                  color: Colors.green,
                  height: 5,
                ),
              ),
              SizedBox(height: 20),

              // Using Row and allign texts vertically
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Monkey D Luffy',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      color: Colors.purple,
                    ),
                  ),
                  Text(
                    'Is the reincarnation of NIKA',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      color: Colors.orange,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),

              // Text with Shadow effect
              Text(
                'My first In_Game name was Shadow'
                    ' PRIME_Shadow',
                style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  height: 2.5,
                  shadows: [
                    Shadow(
                      blurRadius: 10.0,
                      color: Colors.grey,
                      offset: Offset(2.0, 2.0),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
