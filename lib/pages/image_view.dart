import 'package:flutter/material.dart';

class ImageView extends StatelessWidget {
  final String url;
  const ImageView({super.key, required this.url});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Image.network(url),
    );
  }
}
