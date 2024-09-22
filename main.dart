import 'package:flutter/material.dart';

class IconGridScreen extends StatelessWidget {
  final List<IconData> icons = [
    Icons.home,
    Icons.star,
    Icons.settings,
    Icons.person,
    Icons.camera,
    Icons.favorite,
    Icons.message,
    Icons.music_note,
  ];

  final List<String> labels = [
    'Home',
    'Star',
    'Settings',
    'Profile',
    'Camera',
    'Favorites',
    'Messages',
    'Music',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Icon Grid'),
      ),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, // Number of columns
          crossAxisSpacing: 10.0,
          mainAxisSpacing: 10.0,
        ),
        padding: const EdgeInsets.all(16.0),
        itemCount: icons.length,
        itemBuilder: (context, index) {
          return Card(
            elevation: 4.0,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  icons[index],
                  size: 50.0,
                  color: Colors.blue,
                ),
                SizedBox(height: 8.0),
                Text(
                  labels[index],
                  style: TextStyle(fontSize: 16.0),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: IconGridScreen(),
  ));
}
