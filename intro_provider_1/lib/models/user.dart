class User {
  final int? userId;
  final int? id;
  final String? title;
  final String? body;

  User({this.userId, this.id, this.title, this.body});

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      userId: json['userId'],
      id: json['id'],
      title: json['title'],
      body: json['body'],

    );
  }
}
