import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:my_profile/main.dart';

class EducationPage extends StatelessWidget {
  const EducationPage({Key? key, required this.title, required this.color})
    : super(key: key);

  final String title;
  final Color color;
  final Color leadingColor = Colors.green;

  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text(title),
          backgroundColor: color,
          bottom: const TabBar(
            unselectedLabelColor: Colors.white,
            labelColor: Colors.white,
            tabs: [
              Tab(icon: Icon(FontAwesomeIcons.school)),
              Tab(icon: Icon(FontAwesomeIcons.certificate)),
            ],
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: TabBarView(
            children: [
              SingleChildScrollView(child: educationHistory(leadingColor)),
              ceritificate(),
            ],
          ),
        ),
      ),
    );
  }
}

Column educationHistory(Color color) {
  return Column(
    spacing: 20,
    children: [
      SchoolHistoryBox(
        title: "จบการศึกษาระดับมัธยมต้น",
        color: color,
        detail: "โรงเรียนประสาทรัฐประชากิจ",
      ),
      SchoolHistoryBox(
        title: "จบการศึกษาระดับมัธยมปลาย",
        color: color,
        detail: "โรงเรียนประสาทรัฐประชากิจ",
      ),
    ],
  );
}

Column ceritificate() {
  return Column(
    spacing: 20,
    children: [
      ContainerShowDetailIcon(
        detail: "HackerRank",
        icon: FontAwesomeIcons.certificate,
        colorIcon: Colors.red,
      ),
      ShowGallary(
        showpicture: [
          ShowPicture(image: "assets/certificates/cert1.jpg", width: 500),
          ShowPicture(image: "assets/certificates/cert2.jpg", width: 500),
          ShowPicture(image: "assets/certificates/cert3.jpg", width: 500),
        ],
      ),
    ],
  );
}

class SchoolHistoryBox extends StatelessWidget {
  const SchoolHistoryBox({
    super.key,
    required this.title,
    required this.color,
    required this.detail,
  });

  final String title;
  final Color color;
  final String detail;
  final Color shadowColor = const Color.fromRGBO(0, 0, 0, 0.22);

  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(color: shadowColor, blurRadius: 10, offset: Offset(0, 5)),
        ],
      ),
      child: Column(
        children: [
          ShowInfoIcon(
            detail: title,
            icon: FontAwesomeIcons.schoolFlag,
            colorIcon: color,
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(80, 0, 0, 0),
              child: Text(detail, textScaler: TextScaler.linear(1.5)),
            ),
          ),
        ],
      ),
    );
  }
}
