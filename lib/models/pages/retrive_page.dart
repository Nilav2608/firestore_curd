import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class RetrivePage extends StatefulWidget {
  const RetrivePage({super.key});

  @override
  State<RetrivePage> createState() => _RetrivePageState();
}

class _RetrivePageState extends State<RetrivePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Retrive page'),
        backgroundColor: const Color.fromARGB(255, 153, 0, 255),
      ),
      body: StreamBuilder<QuerySnapshot>(
        stream: FirebaseFirestore.instance.collection('pets').snapshots(),
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          } else {
            final petDocs = snapshot.data!.docs;
            return ListView.builder(
              itemCount: petDocs.length,
              itemBuilder: (BuildContext context, int index) {
                return Card(
                  child: ListTile(
                    title: Text(petDocs[index]['name']),
                    subtitle: Text(petDocs[index]['animal']),
                    trailing: Text(petDocs[index]['age'].toString()),
                  ),
                );
              },
            );
          }
        },
      ),
    );
  }
}
