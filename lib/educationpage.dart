import 'package:flutter/material.dart';

class EducationPage extends StatelessWidget {
  const EducationPage({Key? key, required this.title, required this.color})
    : super(key: key);

  final String title;
  final Color color;

  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text(title), backgroundColor: color));
  }
}
