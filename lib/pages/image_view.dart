import 'package:flutter/material.dart';

class ImageView extends StatelessWidget {
  final String url;
  const ImageView({super.key, required this.url});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
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
                  height: 600.0,
                  width: 340.0,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const Divider()
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
