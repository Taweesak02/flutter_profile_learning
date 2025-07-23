import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key,required this.title}) : super(key: key);

  final String title;


  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      appBar: AppBar(title: Text(title)),
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
                  children: [nameInfo(), locateInfo(), contactInfo()],
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

Center locateInfo() {
  return Center(
    child: SizedBox(
      width: 500,
      child: ListTile(
        title: Text(
          "บ้านเลขที่ 7 หมู่ที่ 1 ต.ดอนไผ่ อ.ดำเนินสะดวก จ.ราชบุรี",
          textScaler: TextScaler.linear(1.5),
        ),
        leading: Icon(Icons.home, color: Colors.red[800], size: 40),
      ),
    ),
  );
}

Center contactInfo() {
  return Center(
    child: SizedBox(
      width: 500,
      child: ListTile(
        title: Text(
          "093-9187152 , 095-2327043",
          textScaler: TextScaler.linear(1.5),
        ),
        leading: Icon(Icons.phone, color: Colors.red[800], size: 40),
      ),
    ),
  );
}
