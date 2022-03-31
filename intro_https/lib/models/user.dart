import 'package:flutter/foundation.dart';

class User {
  final int? userId;
  final int? id;
  final String? title;
  final String? body;

  User({
    @required this.userId,
    @required this.id,
    @required this.title,
    @required this.body,
  });

   User.fromJson(Map<String, dynamic> json) {
    return User(
      userId: json['userId'] as int,
      id: json['id'] as int,
      title: json['title'] as String,
      body: json['body'] as String,
    );
  }
}