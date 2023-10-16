import 'package:flutter/material.dart';
import 'dart:ui';

class ImageView extends StatelessWidget {
  final String url;
  const ImageView({super.key, required this.url});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            ImageFiltered(
              imageFilter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
              child: Image.network(
                url,
                height: double.infinity,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
            IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(
                  Icons.arrow_back_sharp,
                  size: 35.0,
                )),
            Center(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(5.0),
                child: Image.network(
                  url,
                  height: 550.0,
                  width: 300.0,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ],
        ),
        bottomNavigationBar: BottomAppBar(
          shape: const CircularNotchedRectangle(),
          child: Container(height: 50.0),
        ),
        floatingActionButton: FloatingActionButton(
          tooltip: 'Like',
          child: const Icon(Icons.favorite_outlined,
              color: Colors.red, size: 35.0),
          backgroundColor: Colors.white,
          onPressed: () {
            // Tu función de manejo del botón aquí
          },
        ),
        floatingActionButtonLocation:
            FloatingActionButtonLocation.miniEndDocked,
      ),
    );
  }
}
