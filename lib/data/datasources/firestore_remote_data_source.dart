import 'package:cloud_firestore/cloud_firestore.dart';

class FirestoreRemoteDataSource {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  Future<Map<String, Map<String, dynamic>>?> getCollection(
      String collectionPath) async {
    final collection = _firestore.collection(collectionPath);
    final QuerySnapshot<Map<String, dynamic>> querySnapshot =
        await collection.get();

    if (querySnapshot.docs.isNotEmpty) {
      Map<String, Map<String, dynamic>> dataMap = {};
      for (var doc in querySnapshot.docs) {
        dataMap[doc.id] = doc.data();
      }
      return dataMap;
    }
    return null;
  }

  Future<void> createDocument(String collectionPath,
      {required String docName, Map<String, dynamic>? values}) async {
    final collection = _firestore.collection(collectionPath);
    await collection.doc(docName).set(values ?? {});
  }

  Future<void> updateDocument(String collectionPath,
      {required String docName, Map<String, dynamic>? values}) async {
    final collection = _firestore.collection(collectionPath);
    await collection.doc(docName).update(values ?? {});
  }
}
