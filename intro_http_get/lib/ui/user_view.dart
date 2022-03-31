
import 'package:flutter/material.dart';
import 'package:intro_http_get/models/user.dart';
import 'package:intro_http_get/services/api_services.dart';

class UserView extends StatelessWidget {
  const UserView({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {  
    ApiService apiService = ApiService();
    return FutureBuilder(
        future: apiService.getUserList(),
        builder: (BuildContext context, AsyncSnapshot<List<User>> snapshot) {
          if (snapshot.hasData) {
            List<User> posts = snapshot.data!;
            return ListView.builder(
              itemCount: posts.length,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: Text('${posts.elementAt(index).id}'),
                  title: Text('${posts.elementAt(index).title}'),
                  subtitle: Text('${posts.elementAt(index).body}'),
                );
              },
            );

                // children: posts
                //     .map(
                //       (User post) => ListTile(
                //         title: Text(post.title!),
                //         subtitle: Text("${post.userId}"),
                //       ),
                //     )
                //     .toList(),
                // );
          } else {
            return Center(child: CircularProgressIndicator());
          }
        },
      );
  }
}