import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:my_profile/main.dart';

class SkillPage extends StatelessWidget {
  const SkillPage({Key? key, required this.title,required this.color}) : super(key: key);

  final String title;
  final Color color;

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title),backgroundColor: color,),
      body: Column(
        children: [
          ShowInfo(detail: "Java html css Python", icon: Icons.computer),
        ],
      ),
    );
  }
}
