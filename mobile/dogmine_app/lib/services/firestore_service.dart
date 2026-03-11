import 'package:cloud_firestore/cloud_firestore.dart';

class FirestoreService {
  final FirebaseFirestore _db = FirebaseFirestore.instance;

  // Add a new document to a collection
  Future<void> addDocument(String collectionPath, Map<String, dynamic> data) async {
    await _db.collection(collectionPath).add(data);
  }

  // Get a document from a collection
  Future<DocumentSnapshot> getDocument(String collectionPath, String docId) async {
    return await _db.collection(collectionPath).doc(docId).get();
  }

  // Update an existing document
  Future<void> updateDocument(String collectionPath, String docId, Map<String, dynamic> data) async {
    await _db.collection(collectionPath).doc(docId).update(data);
  }

  // Delete a document from a collection
  Future<void> deleteDocument(String collectionPath, String docId) async {
    await _db.collection(collectionPath).doc(docId).delete();
  }

  // Get a stream of documents in a collection
  Stream<List<T>> getCollection<T>(String collectionPath, T Function(Map<String, dynamic> data) fromJson) {
    return _db.collection(collectionPath).snapshots().map((snapshot) =>
        snapshot.docs.map((doc) => fromJson(doc.data() as Map<String, dynamic>)).toList());
  }
}