import 'package:firestore_curd/databaseFunctions.dart';
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
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  create();
                },
                child: const Text("Create")),
            ElevatedButton(onPressed: () {}, child: const Text("Update")),
            ElevatedButton(onPressed: () {}, child: const Text("Retrive")),
            ElevatedButton(onPressed: () {}, child: const Text("delete"))
          ],
        ),
      ),
    );
  }
}
