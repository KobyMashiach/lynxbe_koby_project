import 'dart:developer';
import 'package:cloud_firestore/cloud_firestore.dart';

Future<dynamic> firestoreGetCollection(
    CollectionReference<Map<String, dynamic>> collection) async {
  final QuerySnapshot<Map<String, dynamic>> querySnapshot =
      await collection.get();
  if (querySnapshot.docs.isNotEmpty) {
    Map<String, Map<String, dynamic>> dataMap = {};
    for (var doc in querySnapshot.docs) {
      dataMap[doc.id] = doc.data();
    }
    return dataMap;
  }
}

Future<void> firestoreNewDoc(
    CollectionReference<Map<String, dynamic>> collection,
    {required String docName,
    Map<String, dynamic>? values}) async {
  await collection.doc(docName).set(values ?? {});
}

void firestoreUpdateDoc(CollectionReference<Map<String, dynamic>> collection,
    {required String docName, Map<String, dynamic>? values}) async {
  collection.doc(docName).update(values ?? {});
}

void firestoreClearDoc(CollectionReference<Map<String, dynamic>> collection,
    {required String docName}) async {
  collection.doc(docName).set({});
}

firestoreDeleteField(CollectionReference<Map<String, dynamic>> collection,
    {required String docName, required String fieldName}) {
  collection.doc(docName).update({fieldName: FieldValue.delete()});
}

Future<Map<String, dynamic>> firestoreGetDocValues(
    CollectionReference<Map<String, dynamic>> collection, String doc) async {
  try {
    DocumentSnapshot<Map<String, dynamic>> querySnapshot =
        await collection.doc(doc).get();
    if (querySnapshot.exists) {
      Map<String, dynamic> data = querySnapshot.data()!;
      return data;
    }
  } catch (e) {
    log(e.toString());
  }
  return {};
}

Future<dynamic> firestoreGetDataFromDoc(
    CollectionReference<Map<String, dynamic>> collection,
    String doc,
    String value) async {
  try {
    DocumentSnapshot<Map<String, dynamic>> querySnapshot =
        await collection.doc(doc).get();
    if (querySnapshot.exists) {
      Map<String, dynamic> data = querySnapshot.data()!;
      return data[value];
    }
  } catch (e) {
    log(e.toString());
  }
}

Future<void> firestoreDeleteDoc(
    CollectionReference<Map<String, dynamic>> collection,
    {required String docName}) async {
  try {
    await collection.doc(docName).delete();
    log('Document $docName deleted successfully');
  } catch (e) {
    log(e.toString());
  }
}

Future<bool> firestoreCheckIfDocExists(
    CollectionReference<Map<String, dynamic>> collection,
    String docName) async {
  try {
    DocumentSnapshot<Map<String, dynamic>> docSnapshot =
        await collection.doc(docName).get();
    return docSnapshot.exists;
  } catch (e) {
    log(e.toString());
    return false;
  }
}

Future<bool> firestoreCheckIfCollectionExists(String collectionName) async {
  try {
    var collectionRef = FirebaseFirestore.instance.collection(collectionName);
    var querySnapshot = await collectionRef.limit(1).get();
    return querySnapshot.docs.isNotEmpty;
  } catch (e) {
    log("Error checking collection existence: $e");
    return false;
  }
}
