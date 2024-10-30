import 'package:cloud_firestore/cloud_firestore.dart';

class FirestoreServices {
  final CollectionReference orders =
      FirebaseFirestore.instance.collection('order');

  Future<void> saveOrderToDatabase(String receipt) async {
    await orders.add({
      'date': DateTime.now(),
      'receipt': receipt, // Corrected the key and removed the extra comma
    });
  }
}
