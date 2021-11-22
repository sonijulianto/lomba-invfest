import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:lomba/model/user_model.dart';

class UserService {
  CollectionReference userReference =
      FirebaseFirestore.instance.collection('users');

  Future<void> setUser(UserModel user) async {
    try {
      userReference.doc(user.id).set({
        'email': user.email,
        'nik': user.nik,
        'koin': user.koin,
        'name': user.name,
      });
    } catch (e) {
      throw e;
    }
  }

  Future<UserModel> getUserById(String id) async {
    try {
      DocumentSnapshot snapshot = await userReference.doc(id).get();
      return UserModel(
          id: id,
          email: snapshot['email'],
          nik: snapshot['nik'],
          name: snapshot['name'],
          koin: snapshot['koin']);
    } catch (e) {
      throw e;
    }
  }
}
