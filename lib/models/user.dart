import 'package:cloud_firestore/cloud_firestore.dart';

class User {
  final String id;
  final String bio;
  final String email;
  final String photoUrl;
  final String username;
  final String displayName;

  User({
    this.id,
    this.email,
    this.displayName,
    this.photoUrl,
    this.bio,
    this.username
  });

  factory User.fromDocument(DocumentSnapshot doc) {
    return User(
      id: doc['id'],
      email: doc['email'],
      displayName: doc['displayName'],
      photoUrl: doc['photoUrl'],
      bio: doc['bio'],
      username: doc['username'],
    );
  }
}
