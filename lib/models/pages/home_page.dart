import 'package:firestore_curd/models/databaseFunctions.dart';
import 'package:firestore_curd/models/pages/retrive_page.dart';
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
                  create('pets', 'bully', 'bull', 'biggy', 20);
                },
                child: const Text("Create")),
            ElevatedButton(
                onPressed: () {
                  update('pets', 'kitty', 'age', 12);
                },
                child: const Text("Update")),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const RetrivePage(),
                      ));
                },
                child: const Text("Retrive")),
            ElevatedButton(
                onPressed: () {
                  delete('pets', 'dog');
                },
                child: const Text("delete"))
          ],
        ),
      ),
    );
  }
}
