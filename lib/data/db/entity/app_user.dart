import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:tinder_app_flutter/ui/screens/questions/questions.dart';

class AppUser {
  String id;
  String name;
  int age;
  String profilePhotoPath;
  String bio = "";

  AppUser(
      {@required this.id,
      @required this.name,
      @required this.age,
      @required this.profilePhotoPath});

  AppUser.fromSnapshot(DocumentSnapshot snapshot) {
    id = snapshot['id'];
    name = snapshot['name'];
    age = snapshot['age'];
    profilePhotoPath = snapshot['profile_photo_path'];
    bio = snapshot.get('bio') ?? '';
  }

  Map<String, dynamic> toMap() {

    Map metadata = <String, dynamic>{
      'id': id,
      'name': name,
      'age': age,
      'profile_photo_path': profilePhotoPath,
      'bio': bio
    };
    return {
      ...metadata,
      ...Question.getMap()
    };
  }
}
