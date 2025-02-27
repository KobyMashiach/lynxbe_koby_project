import 'package:lynxbe_koby_project/data/datasources/firestore_remote_data_source.dart';
import 'package:lynxbe_koby_project/domain/repositories/firestore_repository.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class FirestoreRepositoryImpl implements FirestoreRepository {
  final FirestoreRemoteDataSource remoteDataSource;

  FirestoreRepositoryImpl(this.remoteDataSource);

  @override
  Future<Map<String, Map<String, dynamic>>?> getCollection(
          String collectionPath) =>
      remoteDataSource.getCollection(collectionPath);

  @override
  Future<void> createDocument(String collectionPath,
          {required String docName, Map<String, dynamic>? values}) =>
      remoteDataSource.createDocument(collectionPath,
          docName: docName, values: values);

  @override
  Future<void> updateDocument(String collectionPath,
          {required String docName, Map<String, dynamic>? values}) =>
      remoteDataSource.updateDocument(collectionPath,
          docName: docName, values: values);

  @override
  Future<bool> checkIfDocExists(String collectionPath,
      {required String docName}) async {
    try {
      final docSnapshot = await FirebaseFirestore.instance
          .collection(collectionPath)
          .doc(docName)
          .get();

      return docSnapshot.exists;
    } catch (e) {
      throw Exception("Error checking if document exists: $e");
    }
  }

  @override
  Future<Map<String, dynamic>?> getDocValues(String collectionPath,
      {required String docName}) async {
    try {
      final docSnapshot = await FirebaseFirestore.instance
          .collection(collectionPath)
          .doc(docName)
          .get();

      if (docSnapshot.exists) {
        return docSnapshot.data();
      }
      return null;
    } catch (e) {
      throw Exception("Error getting document values: $e");
    }
  }
}
