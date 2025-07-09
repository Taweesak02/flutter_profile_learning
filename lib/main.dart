import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "My app",
      home: Scaffold(
        appBar: AppBar(
          title: Center(child: Text("My Profile")),
          backgroundColor: Colors.blue,
        ),
        body: Column(
          children: [
            Align(
              alignment: Alignment.topCenter,
              child: SizedBox(
                width: 300,
                child: Transform.translate(
                  offset: Offset(0, 20),
                  child: CircleAvatar(
                    radius: 200,
                    backgroundImage: AssetImage('assets/face.jpg'),
                  ),
                ),
              ),
            ),
            ListTile(
              title: Text("Hello"),
              leading: Icon(Icons.portrait, color: Colors.blue, size: 40),
            ),
          ],
        ),
      ),
    );
  }
}
