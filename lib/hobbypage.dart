import 'package:flutter/material.dart';

class HobbyPage extends StatelessWidget {
  const HobbyPage({Key? key, required this.title,required this.color}) : super(key: key);

  final String title;
  final Color color;

  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text(title),
          backgroundColor: color,
          bottom: const TabBar(
            unselectedLabelColor: Colors.white,
            labelColor: Colors.white,
            tabs: [
              Tab(icon: Icon(Icons.abc)),
              Tab(icon: Icon(Icons.abc)),
              Tab(icon: Icon(Icons.abc)),
            ],
          ),
        ),
      ),
    );
  }
}

class ShowGallary extends StatelessWidget {
  const ShowGallary({super.key, required this.image});

  final String image;

  Widget build(BuildContext context) {
    return Image(image: AssetImage(''));
  }
}
