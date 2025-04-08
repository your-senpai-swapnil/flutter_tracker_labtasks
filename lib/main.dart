import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Straw Hats Grid',
      home: ImageGridScreen(),
    );
  }
}
class ImageGridScreen extends StatelessWidget {
  final List<Map<String, String>> strawHats = [
    {
      "name": "Monkey D. Luffy",
      "image": "https://miro.medium.com/v2/resize:fit:736/1*YqfVlyCe06DfcPsR3kpYrw.jpeg"
    },
    {
      "name": "Roronoa Zoro",
      "image": "https://i.imgur.com/FhjJZpq.jpeg"
    },
    {
      "name": "Sanji",
      "image": "https://i.imgur.com/KkXM3Fn.jpeg"
    },
    {
      "name": "Nami",
      "image": "https://i.imgur.com/30BEiZT.jpeg"
    },
    {
      "name": "Usopp",
      "image": "https://i.imgur.com/FZ9AYmU.jpeg"
    },
    {
      "name": "Tony Tony Chopper",
      "image": "https://i.imgur.com/53QSoWJ.jpeg"
    },
    {
      "name": "Nico Robin",
      "image": "https://i.imgur.com/A9q5DAH.jpeg"
    },
    {
      "name": "Franky",
      "image": "https://i.imgur.com/xoKmmpO.jpeg"
    },
    {
      "name": "Brook",
      "image": "https://i.imgur.com/BMqyr3M.jpeg"
    },
    {
      "name": "Jinbei",
      "image": "https://i.imgur.com/cjOZ0vi.jpeg"
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Straw Hats Crew'),
        centerTitle: true,
        backgroundColor: Colors.red,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, // 2 items per row
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            childAspectRatio: 0.8, // Controls height of images
          ),
          itemCount: strawHats.length,
          itemBuilder: (context, index) {
            return Card(
              elevation: 5,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    child: CachedNetworkImage(
                      imageUrl: strawHats[index]["image"]!,
                      fit: BoxFit.cover,
                      placeholder: (context, url) => const CircularProgressIndicator(),
                      errorWidget: (context, url, error) => const Icon(Icons.error, size: 50),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      strawHats[index]["name"]!,
                      style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
