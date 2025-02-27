abstract class FirestoreRepository {
  Future<Map<String, Map<String, dynamic>>?> getCollection(
      String collectionPath);

  Future<void> createDocument(String collectionPath,
      {required String docName, Map<String, dynamic>? values});

  Future<void> updateDocument(String collectionPath,
      {required String docName, Map<String, dynamic>? values});

  Future<bool> checkIfDocExists(String collectionPath,
      {required String docName});

  Future<Map<String, dynamic>?> getDocValues(String collectionPath,
      {required String docName});
}
