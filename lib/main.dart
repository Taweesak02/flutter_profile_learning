import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_profile/profilepage.dart';

void main() {
  runApp(MyApp());
}

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
        '/profile': (context) => const ProfilePage(title: 'Profile'),
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
            color: Colors.amber,
            fontColor: Colors.white,
            icon: Icons.person,
          ),
          App(
            route: "",
            appTitle: "Contact",
            color: Colors.cyan,
            fontColor: Colors.white,
            icon: Icons.mail,
          ),
          App(
            route: "",
            appTitle: "Skills",
            color: Colors.redAccent, 
            fontColor: Colors.white, 
            icon: Icons.settings
          ),
          App(
            route: "", 
            appTitle: "Education", 
            color: Colors.green, 
            fontColor: Colors.white, 
            icon: Icons.school
          ),
          App(
            route: "", 
            appTitle: "Hobby", 
            color: Colors.lightBlue, 
            fontColor: Colors.white, 
            icon: Icons.brush
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
    required this.fontColor,
    required this.icon,
  });

  final String appTitle;
  final String route;
  final Color color;
  final Color fontColor;
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
          Icon(icon, size: 100, color: fontColor),
          Text(appTitle, style: TextStyle(fontSize: 15, color: fontColor)),
        ],
      ),
    );
  }
}
