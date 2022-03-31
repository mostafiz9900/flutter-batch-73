import 'dart:convert';

import 'package:http/http.dart';
import 'package:intro_http_get/models/user.dart';

class ApiService {
  final userUrl = 'https://jsonplaceholder.typicode.com/posts';

  Future<List<User>> getUserList() async {
    Response getUrl = await get(Uri.parse(userUrl));

    if (getUrl.statusCode == 200) {
      List<dynamic> list = jsonDecode(getUrl.body);

      List<User> user =
          list.map((dynamic items) => User.fromJson(items)).toList();
      return user;
    } else {
      throw 'user list does not get data';
    }

  }
}
