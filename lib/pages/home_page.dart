import 'package:flutter/material.dart';
import 'package:galery/data/images_list.dart';
import 'package:galery/pages/image_view.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'GalArt',
          style: TextStyle(
              fontFamily: 'Under', color: Colors.amber, fontSize: 20.0),
        ),
        backgroundColor: Colors.white,
        centerTitle: true,
        elevation: 0,
      ),
      body: GridView.extent(
        maxCrossAxisExtent: 200.0,
        padding: const EdgeInsets.all(5.0),
        mainAxisSpacing: 5.0,
        crossAxisSpacing: 5.0,
        childAspectRatio: 0.6,
        children: _imagesList,
      ),
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        child: Container(height: 50.0),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => setState(() {
          return;
        }),
        tooltip: 'Add photo',
        child: const Icon(Icons.add),
        backgroundColor: Colors.amber[400],
        hoverColor: Colors.amber[700],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }

  List<Widget> get _imagesList {
    List<Widget> _listImages = [];

    for (var image in images) {
      _listImages.add(ClipRRect(
        borderRadius: BorderRadius.circular(5.0),
        child: GestureDetector(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => ImageView(url: image)));
          },
          child: Image.network(
            image,
            fit: BoxFit.cover,
            height: 190.0,
          ),
        ),
      ));
    }

    return _listImages;
  }
}
