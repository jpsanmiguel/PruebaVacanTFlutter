import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:prueba_vacant_flutter/user_detail.dart';

import 'models/user.dart';

class UserList extends StatelessWidget {
  final List<User> users;

  UserList({Key key, this.users});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: users.length,
      itemBuilder: (context, index) {
        User user = users[index];
        return GestureDetector(
          child: Card(
            child: ListTile(
              leading: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  FlutterLogo(
                    size: 48.0,
                  ),
                ],
              ),
              title: Text(user.name),
              subtitle: Text("Email: ${user.email}\nPhone: ${user.phone}"),
              isThreeLine: true,
            ),
          ),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => UserDetail(user: users[index]),
              ),
            );
          },
        );
      },
    );
  }
}
