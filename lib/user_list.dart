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
                  Container(
                    child: CircleAvatar(
                      radius: 26,
                      backgroundImage: NetworkImage(
                        'https://www.iconfinder.com/data/icons/social-messaging-ui-color-shapes-2-free/128/social-reddit-circle-512.png',
                      ),
                    ),
                  ),
                ],
              ),
              title: Text(
                user.name,
                style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
              ),
              subtitle: Column(
                children: [
                  Row(
                    children: [
                      Text("Email:", style: TextStyle(fontWeight: FontWeight.bold)),
                      Text(" ${user.email}"),
                    ],
                  ),
                  Row(
                    children: [
                      Text("Phone:", style: TextStyle(fontWeight: FontWeight.bold)),
                      Text(" ${user.phone}"),
                    ],
                  ),
                ],
              ),
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
