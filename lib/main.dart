import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_profile/contactpage.dart';
import 'package:my_profile/educationpage.dart';
import 'package:my_profile/hobbypage.dart';
import 'package:my_profile/profilepage.dart';
import 'package:my_profile/skillpage.dart';

void main() {
  runApp(MyApp());
}

Color profileColor = Colors.amber;
Color contactColor = Colors.cyan;
Color skillColor = Colors.redAccent;
Color educationColor = Colors.green;
Color hobbyColor = Colors.lightBlue;

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
        '/profile': (context) => ProfilePage(title: 'Profile',color: profileColor,),
        '/contact': (context) => ContactPage(title: "Contact",color: contactColor,),
        '/skill': (context) =>  SkillPage(title: "Skills",color: skillColor,),
        '/education': (context) => EducationPage(title: "Education",color: educationColor,),
        '/hobby': (context) => HobbyPage(title: "Hobby",color: hobbyColor,),
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
          App(
            route: "/hobby",
            appTitle: "Hobby",
            color: hobbyColor,
            icon: Icons.brush,
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

class ShowInfo extends StatelessWidget {
  const ShowInfo({super.key, required this.detail, required this.icon});

  final String detail;
  final IconData icon;

  Widget build(BuildContext context) {
    return Center(
      child: ListTile(
        title: Text(detail, textScaler: TextScaler.linear(1.5)),
        leading: Icon(icon, color: Colors.red[800], size: 40),
      ),
    );
  }
}
