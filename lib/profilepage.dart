import 'package:flutter/material.dart';
import 'package:my_profile/main.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key, required this.title, required this.color})
    : super(key: key);

  final String title;
  final Color color;
  final double widthBox = 400;

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      appBar: AppBar(title: Text(title), backgroundColor: color),
      body: Container(
        height: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/bg.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                Align(
                  //ส่วนภาพโปรไฟล์
                  alignment: Alignment.topCenter,
                  child: SizedBox(
                    width: 300,
                    child: Transform.translate(
                      offset: Offset(0, 20),
                      child: Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(color: Colors.amber, width: 5),
                        ),
                        child: CircleAvatar(
                          radius: 200,
                          backgroundImage: AssetImage('assets/face.jpg'),
                        ),
                      ),
                    ),
                  ),
                ),
                Column(
                  spacing: 20,
                  children: [
                    ContainerShowDetailText(
                      width: widthBox,
                      detail: "ทวีศักดิ์ นาคทับ",
                      leading: "ชื่อ",
                    ),
                    ContainerShowDetailText(
                      width: widthBox,
                      detail: "Taweesak Nakthap",
                      leading: "Name",
                    ),
                    ContainerShowDetailText(
                      width: widthBox,
                      detail: "กอไผ่",
                      leading: "ชื่อเล่น",
                    ),
                    ContainerShowDetailText(
                      width: widthBox,
                      detail: "ชาย",
                      leading: "เพศ",
                    ),
                    ContainerShowDetailText(
                      width: widthBox,
                      detail: "12 มีนาคม พ.ศ. 2548",
                      leading: "วันเกิด",
                    ),
                    ContainerShowDetailText(
                      width: widthBox,
                      detail: "วาดรูป",
                      leading: "งานอดิเรก",
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
