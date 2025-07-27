import 'package:flutter/material.dart';
import 'package:my_profile/main.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key, required this.title,required this.color}) : super(key: key);

  final String title;
  final Color color;

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      appBar: AppBar(title: Text(title),backgroundColor: color,),
      body: Container(
        height: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/bg.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: SingleChildScrollView(
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
              Container(
                //ส่วนอธิบายข้อมูล
                width: 480,
                decoration: BoxDecoration(
                  color: Colors.amberAccent,
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                ),
                child: Column(
                  children: [
                    nameInfo(),
                    ShowInfo(detail: "Taweesak Nakthap", icon: Icons.person),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Center nameInfo() {
  return Center(
    child: SizedBox(
      width: 300,
      child: ListTile(
        title: const Text(
          "ทวีศักดิ์\t\t\tนาคทับ",
          textScaler: TextScaler.linear(1.5),
        ),
        leading: Icon(Icons.portrait, color: Colors.red[800], size: 40),
      ),
    ),
  );
}
