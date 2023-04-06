import 'package:cloud_firestore/cloud_firestore.dart';

create() async {
  await FirebaseFirestore.instance
      .collection('pets')
      .doc('dog')
      .set({'name': 'Tom', 'animal': 'dog', 'age': '12'});
  print("Database updated");
}
