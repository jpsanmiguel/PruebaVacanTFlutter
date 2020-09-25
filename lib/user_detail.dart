import 'package:flutter/material.dart';

import 'models/user.dart';

class UserDetail extends StatelessWidget {
  final User user;

  UserDetail({Key key, this.user}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(this.user.name),
      ),
      body: Text('This is the detail.'),
    );
  }
}
