import 'package:prueba_vacant_flutter/models/list_item.dart';

import 'address.dart';
import 'company.dart';

class User {
  final int id;
  final String name;
  final String username;
  final String email;
  final Address address;
  final String phone;
  final String website;
  final Company company;

  User(this.id, this.name, this.username, this.email, this.address, this.phone, this.website, this.company);

  factory User.fromJson(Map<String, dynamic> json) {
    return User(json['id'], json['name'], json['username'], json['email'], Address.fromJson(json['address']), json['phone'], json['website'], Company.fromJson(json['company']));
  }

  List<ListItem> companyToListItem() {
    return [
      ListItem("Name", "${company.name}"),
      ListItem("Catch phrase", "${company.catchPhrase}"),
      ListItem("Business", "${company.bs}"),
    ];
  }
}
