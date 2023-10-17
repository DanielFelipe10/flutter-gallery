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
            Container(
              width: 60.0,
              height: 60.0,
              decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color.fromARGB(255, 48, 48, 48)),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: const Icon(
                          Icons.arrow_back_sharp,
                          size: 30.0,
                          color: Colors.amber,
                          weight: 700,
                        )),
                  ]),
            ),
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
          child: SizedBox(
              height: 50.0,
              width: double.infinity,
              child: Container(
                color: Colors.grey[850],
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    RichText(
                      text: const TextSpan(
                        text: 'Gal',
                        style: TextStyle(
                            fontSize: 15.0,
                            fontFamily: 'Madani',
                            color: Colors.white),
                        children: <TextSpan>[
                          TextSpan(
                              text: 'Art',
                              style: TextStyle(
                                  fontFamily: 'Under',
                                  fontWeight: FontWeight.bold,
                                  fontSize: 25.0,
                                  color: Colors.amber)),
                          TextSpan(
                              text: ' now!',
                              style: TextStyle(
                                  fontSize: 15.0,
                                  color: Colors.white,
                                  fontFamily: 'madani')),
                        ],
                      ),
                    ),
                  ],
                ),
              )),
        ),
        floatingActionButton: FloatingActionButton(
          tooltip: 'Like',
          child: const Icon(Icons.favorite_outlined, size: 30.0),
          backgroundColor: Colors.red,
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
