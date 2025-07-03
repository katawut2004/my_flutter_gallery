import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    final imageList = <String>[
      'assets/images/01.jpg',
      'assets/images/02.jpg',
      'assets/images/03.jpg',
      'assets/images/04.jpg',
      'assets/images/05.jpg',
      'assets/images/06.jpg',
      'assets/images/07.jpg',
      'assets/images/08.jpg',
      'assets/images/09.jpg',
      'assets/images/10.jpg',
    ];

    return MaterialApp(
      home: Scaffold(
        body: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 4,
            mainAxisSpacing: 4,
          ),
          itemCount: imageList.length,
          itemBuilder: (BuildContext context, int index) {
            return Card(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.asset(
                  imageList[index],
                  fit: BoxFit.cover,
                  cacheWidth: 300,
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}