import 'package:intro_todo_app/models/user.dart';
import 'package:http/http.dart' as http;

class ApiServices {
  static String url = 'https://jsonplaceholder.typicode.com/users';

  static Future<List<User>> getUserList() async {
    try {
      http.Response response = await http.get(Uri.parse(url));
      List<User> users = [];
      if (200 == response.statusCode) {
        users = userFromMap(response.body);
        return users;
      } else {
        return [];
      }
    } catch (erro) {
      return [];
    }
  }
}
