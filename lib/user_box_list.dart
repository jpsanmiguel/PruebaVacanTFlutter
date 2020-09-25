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
        return GestureDetector(
          child: Text(users[index].name),
          onTap: () {
            // Navigator.push(context, MaterialPageRoute(builder: (context) = gt; UserPage(item: users[index]),),);
          },
        );
      },
    );
  }

}