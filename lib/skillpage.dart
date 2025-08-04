import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:my_profile/main.dart';

class SkillPage extends StatelessWidget {
  const SkillPage({Key? key, required this.title, required this.color})
    : super(key: key);

  final String title;
  final Color color;

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title), backgroundColor: color),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            spacing: 20,
            children: [
              ContainerShowDetailText(
                detail: "English",
                leading: "ภาษาที่ใช้เป็น",
              ),
              ContainerShowDetailText(
                detail: "Java Python HTML CSS JavaScript",
                leading: "ภาษาทางคอมพิวเตอร์",
              ),
              pictureShowcase(color),
              ContainerShowDetailIcon(
                detail: "https://github.com/Taweesak02",
                icon: FontAwesomeIcons.github,
                colorIcon: color,
              ),
              ContainerShowDetailText(
                detail: "VS Code IntelliJ_IDEA GitHub Docker Postman",
                leading: "Tools",
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Column pictureShowcase(Color color) {
  return Column(
    spacing: 20,
    children: [
      ContainerShowDetailIcon(detail: "Web Development", icon: Icons.computer,colorIcon: color,),
      ShowGallary(
        showpicture: [
          ShowPicture(image: "assets/websitepic/website1.jpg", width: 500),
          ShowPicture(
            image: "assets/websitepic/website1search.jpg",
            width: 500,
          ),
          ShowPicture(image: "assets/websitepic/website1add.jpg", width: 500),
        ],
      ),
    ],
  );
}
