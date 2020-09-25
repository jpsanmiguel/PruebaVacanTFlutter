import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'models/user.dart';

class UserBoxList extends StatelessWidget {
  final List<User> users;

  UserBoxList({Key key, this.users});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: users.length,
      itemBuilder: (context, index) {
        User user = users[index];
        return GestureDetector(
          child: Card(
            child: ListTile(
              leading: FlutterLogo(),
              title: Text(user.name),
              subtitle: Text("Email: ${user.email}\nPhone: ${user.phone}"),
              isThreeLine: true,
            ),
          ),
          onTap: () {
            // Navigator.push(context, MaterialPageRoute(builder: (context) = gt; UserPage(item: users[index]),),);
          },
        );
      },
    );
  }

}