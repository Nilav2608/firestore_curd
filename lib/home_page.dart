import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("CURD Operations"),
        backgroundColor: const Color.fromARGB(255, 153, 0, 255),
      ),
    );
  }
}