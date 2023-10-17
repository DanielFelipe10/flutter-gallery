import 'package:flutter/material.dart';
import 'package:galery/pages/home_page.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'GalArt',
      theme: ThemeData(fontFamily: 'Madani'),
      home: const HomePage(),
    );
  }
}
