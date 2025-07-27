import 'package:flutter/material.dart';
import 'package:my_profile/main.dart';

class ContactPage extends StatelessWidget {
  const ContactPage({Key? key, required this.title,required this.color}) : super(key: key);

  final String title;
  final Color color;

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title),backgroundColor: color,),
      body: Column(
        children: [
          ShowInfo(
            detail: "บ้านเลขที่ 7 หมู่ที่ 1 ต.ดอนไผ่ อ.ดำเนินสะดวก จ.ราชบุรี",
            icon: Icons.home,
          ),
          ShowInfo(
            detail: "taweesak.n@ku.th , kkopai606@gmail.com",
            icon: Icons.mail,
          ),
          ShowInfo(detail: "093-9187152 , 095-2327043", icon: Icons.phone),
          ShowInfo(detail: "Taweesak Nakthap", icon: Icons.facebook),
        ],
      ),
    );
  }
}
