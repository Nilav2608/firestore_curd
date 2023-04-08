import 'package:cloud_firestore/cloud_firestore.dart';

create(String collName, docName, name, animal, int age) async {
  await FirebaseFirestore.instance
      .collection(collName)
      .doc(docName)
      .set({'name': name, 'animal': animal, 'age': age});
 
}

update(String collName, docName, field, var newField) async {
  await FirebaseFirestore.instance
      .collection(collName)
      .doc(docName)
      .update({field: newField});
}

delete(String collName, docName) async {
     await FirebaseFirestore.instance.collection(collName).doc(docName).delete();
}
