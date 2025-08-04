import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_profile/contactpage.dart';
import 'package:my_profile/educationpage.dart';
import 'package:my_profile/profilepage.dart';
import 'package:my_profile/skillpage.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(MyApp());
}

Color profileColor = Colors.amber;
Color contactColor = Colors.cyan;
Color skillColor = Colors.redAccent;
Color educationColor = Colors.green;

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "My Resume",
      theme: ThemeData(
        textTheme: GoogleFonts.itimTextTheme(),
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.deepPurple[600],
          centerTitle: true,
          foregroundColor: Colors.white,
        ),
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const HomePage(title: "HomePage"),
        '/profile':
            (context) => ProfilePage(title: 'Profile', color: profileColor),
        '/contact':
            (context) => ContactPage(title: "Contact", color: contactColor),
        '/skill': (context) => SkillPage(title: "Skills", color: skillColor),
        '/education':
            (context) =>
                EducationPage(title: "Education", color: educationColor),
      },
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: GridView.count(
        crossAxisCount: 2,
        padding: EdgeInsets.all(20),
        crossAxisSpacing: 40,
        mainAxisSpacing: 40,
        children: [
          App(
            route: "/profile",
            appTitle: "Overview",
            color: profileColor,
            icon: Icons.person,
          ),
          App(
            route: "/contact",
            appTitle: "Contact",
            color: contactColor,
            icon: Icons.mail,
          ),
          App(
            route: "/skill",
            appTitle: "Skills",
            color: skillColor,
            icon: Icons.settings,
          ),
          App(
            route: "/education",
            appTitle: "Education",
            color: educationColor,
            icon: Icons.school,
          ),
        ],
      ),
    );
  }
}

class App extends StatelessWidget {
  const App({
    super.key,
    required this.route,
    required this.appTitle,
    required this.color,
    required this.icon,
  });

  final String appTitle;
  final String route;
  final Color color;
  final Color fontColor = Colors.white;
  final IconData icon;

  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(20)),
        ),
        backgroundColor: color,
      ),
      onPressed: () {
        Navigator.pushNamed(context, route);
      },
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(flex: 5, child: Icon(icon, size: 100, color: fontColor)),
          Expanded(
            flex: 1,
            child: Text(
              appTitle,
              style: TextStyle(fontSize: 15, color: fontColor),
            ),
          ),
        ],
      ),
    );
  }
}

class ShowInfoIcon extends StatelessWidget {
  const ShowInfoIcon({
    super.key,
    required this.detail,
    required this.icon,
    required this.colorIcon,
  });

  final String detail;
  final Color colorIcon;
  final IconData icon;

  Widget build(BuildContext context) {
    return ListTile(
      title: Text(detail, textScaler: TextScaler.linear(1.5)),
      leading: Icon(icon, color: colorIcon, size: 40),
    );
  }
}

class ShowInfoFaIcon extends StatelessWidget {
  const ShowInfoFaIcon({
    super.key,
    required this.detail,
    required this.icon,
    this.colorIcon = Colors.black,
  });

  final String detail;
  final Color colorIcon;
  final IconData icon;

  Widget build(BuildContext context) {
    return ListTile(
      title: Text(detail, textScaler: TextScaler.linear(1.5)),
      leading: FaIcon(icon, color: colorIcon, size: 40),
    );
  }
}

class ShowInfoTextLeading extends StatelessWidget {
  const ShowInfoTextLeading({
    super.key,
    required this.detail,
    required this.leadingTitle,
    this.colorLeadingText = Colors.black,
  });

  final String detail;
  final Color colorLeadingText;
  final String leadingTitle;

  Widget build(BuildContext context) {
    return ListTile(
      titleAlignment: ListTileTitleAlignment.top,
      title: Text(detail, textScaler: TextScaler.linear(1.5)),
      leading: Text(
        leadingTitle + " :",
        textScaler: TextScaler.linear(2.3),
        style: TextStyle(color: colorLeadingText),
      ),
    );
  }
}

class ShowGallary extends StatelessWidget {
  const ShowGallary({super.key, required this.showpicture});

  final List<ShowPicture> showpicture;

  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Container(
        decoration: BoxDecoration(color: Colors.grey[300]),
        padding: EdgeInsets.all(10),
        child: Row(spacing: 10, children: showpicture),
      ),
    );
  }
}

class ShowPicture extends StatelessWidget {
  const ShowPicture({
    super.key,
    required this.image,
    required this.width,
    this.height = 300,
  });

  final String image;
  final double width;
  final double height;

  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(width: 2, color: Colors.black),
      ),
      child: Image(
        width: width,
        height: height,
        image: AssetImage(image),
        fit: BoxFit.cover,
      ),
    );
  }
}

class ContainerShowDetailIcon extends StatelessWidget {
  const ContainerShowDetailIcon({
    super.key,
    this.width = double.infinity,
    required this.detail,
    required this.icon,
    this.colorIcon = Colors.black,
    this.shadowColor = const Color.fromRGBO(0, 0, 0, 0.22),
  });

  final double width;
  final String detail;
  final IconData icon;
  final Color colorIcon;
  final Color shadowColor;

  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: shadowColor,
            blurRadius: 38,
            spreadRadius: 0,
            offset: Offset(0, 19),
          ),
          BoxShadow(
            color: shadowColor,
            blurRadius: 12,
            spreadRadius: 0,
            offset: Offset(0, 15),
          ),
        ],
      ),
      width: width,
      child: ShowInfoIcon(detail: detail, icon: icon, colorIcon: colorIcon),
    );
  }
}

class ContainerShowDetailText extends StatelessWidget {
  const ContainerShowDetailText({
    super.key,
    this.width = double.infinity,
    required this.detail,
    required this.leading,
    this.shadowColor = const Color.fromRGBO(0, 0, 0, 0.22),
  });

  final double width;
  final String detail;
  final String leading;
  final Color shadowColor;

  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: shadowColor,
            blurRadius: 38,
            spreadRadius: 0,
            offset: Offset(0, 19),
          ),
          BoxShadow(
            color: shadowColor,
            blurRadius: 12,
            spreadRadius: 0,
            offset: Offset(0, 15),
          ),
        ],
      ),
      width: width,
      child: ShowInfoTextLeading(detail: detail, leadingTitle: leading),
    );
  }
}
