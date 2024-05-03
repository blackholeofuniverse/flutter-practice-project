import 'package:flutter/material.dart';
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: const Color(0xFF18181b),
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: const Color(0xFF18181b),
        title: const Text("Catalog App", style: TextStyle(color: Colors.white),),
      ),
      body: const Center(
        child: Text("Welcome to the Home Page", style: TextStyle(color: Colors.white)),
      ),
      drawer: const Drawer(backgroundColor: Color(0xFF18181b),
      )
    );
  }
}