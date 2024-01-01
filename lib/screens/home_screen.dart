import 'package:calculator_app/widgets/textfield.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text("Calculator"),
        backgroundColor: Colors.redAccent,
      ),
      body: Column(
        children: [CustomTextField()],
      ),
    );
  }
}
