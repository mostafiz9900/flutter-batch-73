import 'dart:convert';

import 'package:intro_provider_1/models/user.dart';
import 'package:http/http.dart';

class UserServeices {
  final String url = 'https://jsonplaceholder.typicode.com/posts';

  Future<List<User>> getUserList() async {
    Response response = await get(Uri.parse(url));
    print(response.body);
    if (response.statusCode == 200) {
      List<dynamic> users = jsonDecode(response.body);
      List<User> userList =
          users.map((dynamic user) => User.fromJson(user)).toList();
      return userList;
    } else {
      return [];
    }
  }
}
