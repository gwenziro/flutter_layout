import 'package:flutter/material.dart';

void main() => runApp(MyApp());

// ignore: must_be_immutable
class MyApp extends StatelessWidget {
  MyApp({super.key});

  Widget titleSection = Container(
    padding: const EdgeInsets.all(32.0),
    child: Row(
      children: [
        Expanded(
          // soal 1
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // soal 2
              Container(
                padding: const EdgeInsets.only(bottom: 8.0),
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
                  color: Colors.grey[500],
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
    Color color = Theme.of(context).primaryColor;

    // ignore: unused_local_variable
    Widget buttonSection = Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _buildButtonColumn(color, Icons.call, 'CALL'),
        _buildButtonColumn(color, Icons.near_me, 'ROUTE'),
        _buildButtonColumn(color, Icons.share, 'SHARE'),
      ],
    );
    const String wisataText = 'Gunung Bromo adalah salah satu gunung berapi '
        'paling terkenal di Indonesia, terletak di kawasan Taman Nasional '
        'Bromo Tengger Semeru. Gunung ini menawarkan pemandangan sunrise '
        'yang menakjubkan dan lautan pasir yang luas, menjadi destinasi '
        'favorit wisatawan lokal maupun mancanegara.';
    const String identitas =
        '\n\nDikerjakan oleh: Muhammad Rayhan\nNIM: 2241720213';
    // ignore: unused_local_variable
    Widget textSection = Container(
      padding: const EdgeInsets.all(32),
      child: const Text(
        identitas + wisataText,
        softWrap: true,
      ),
    );
    return MaterialApp(
      title: 'Flutter layout: Muhammad Rayhan, 2241720213',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter layout demo'),
        ),
        body: ListView(
          children: [
            Image.asset(
              'images/lake.jpg',
              width: 640,
              height: 240,
              fit: BoxFit.cover,
            ),
            titleSection, // Tambahkan titleSection ke body
            textSection,
            buttonSection,
          ],
        ),
      ),
    );
  }

  // ignore: unused_element
  Column _buildButtonColumn(Color color, IconData icon, String label) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, color: color),
        Container(
          margin: const EdgeInsets.only(top: 8),
          child: Text(
            label,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: color,
            ),
          ),
        ),
      ],
    );
  }
}
