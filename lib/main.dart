import 'package:heheboi_app/pages/home.dart';
import 'package:heheboi_app/pages/login.dart';
import 'package:heheboi_app/pages/product.dart';
import 'package:heheboi_app/utils/themes.dart';
import 'package:heheboi_app/utils/routes.dart';
import 'package:flutter/material.dart';

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
        theme: MyTheme.myTheme(context),
        // darkTheme: ThemeData(brightness: Brightness.dark),
        debugShowCheckedModeBanner: false,
        initialRoute: MyRoutes.loginRoute,
        routes: {
          "/": (context) => const LoginPage(),
          MyRoutes.homeRoute: (context) => const HomePage(),
          MyRoutes.loginRoute: (context) => const LoginPage(),
          MyRoutes.productRoute: (context) => const ProductPage()
        });
  }
}
