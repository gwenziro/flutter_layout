import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  Widget titleSection = Container(
  padding: const EdgeInsets.all(32.0), // Nilai padding diisi
  child: Row(
    children: [
      Expanded(
        // soal 1
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start, // Diisi dengan CrossAxisAlignment
          children: [
            // soal 2
            Container(
              padding: const EdgeInsets.only(bottom: 8.0), // Bottom padding diisi
              child: const Text(
                'Wisata Gunung di Batu',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Text(
              'Batu, Malang, Indonesia',
              style: TextStyle(
                color: Colors.grey[500], // Style diisi dengan warna
              ),
            ),
          ],
        ),
      ),
      // soal 3
      Icon(
        Icons.star, // Icon diisi
        color: Colors.red[500], // Warna diisi
      ),
      const Text('41'), // Teks diisi
    ],
  ),
);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter layout: Muhammad Rayhan, 2241720213',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter layout demo'),
        ),
        body: Column(
          children: [
            titleSection, // Tambahkan titleSection ke body
            const Center(
              child: Text('Hello World'),
            ),
          ],
        ),
      ),
    );
  }
}
