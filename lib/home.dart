import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }

  Future<http.Response> fetchUsers() {
    return http.get('https://jsonplaceholder.typicode.com/users/');
  }
}
