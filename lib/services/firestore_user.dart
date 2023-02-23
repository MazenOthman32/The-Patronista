import 'package:cloud_firestore/cloud_firestore.dart';

import '../models/user_model.dart';

class FireStoreUser {
  final CollectionReference _userCollection =
      FirebaseFirestore.instance.collection('users');
  Future<void> addUser(UserModel user) async {
    return await _userCollection.doc(user.id).set(
          user.tojson(),
        );
  }
}
