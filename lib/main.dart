import 'package:heheboi_app/pages/home.dart';
import 'package:heheboi_app/pages/login.dart';
import 'package:heheboi_app/utils/routes.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      color: const Color(0xFF18181b),
      // themeMode: ThemeMode.dark,
      theme: ThemeData(
        fontFamily: GoogleFonts.lato().fontFamily
      ),
      // darkTheme: ThemeData(brightness: Brightness.dark),
      debugShowCheckedModeBanner: true,
      initialRoute: "/login",
      routes: {
        "/":(context) => const LoginPage(),
        MyRoutes.homeRoute:(context) => const HomePage(),
        MyRoutes.loginRoute: (context) =>  const LoginPage()
      },
    );
  }
}
