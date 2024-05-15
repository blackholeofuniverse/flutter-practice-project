import 'package:flutter/material.dart';

class ProductPage extends StatelessWidget {
  const ProductPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Material(
      color: Color(0xFF18181b),
      child: Center(child: Text('This is a product page', style: TextStyle(
        color: Colors.white
      ),)),
    );
  }
}
