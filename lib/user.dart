import 'package:cloud_firestore/cloud_firestore.dart';

class User {
  final String id;
  final String name;
  final String email;
  final String password;

  User({this.id, this.name, this.email, this.password});

  factory User.usedoc(DocumentSnapshot doc) {
    return User(
      id: doc.documentID,
      name: doc.data["isim"],
      email: doc.data["email"],
      password: doc.data["şifre"],
    );
  }
}
