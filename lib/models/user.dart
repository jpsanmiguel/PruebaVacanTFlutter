import 'address.dart';
import 'company.dart';

class User {
  final int id;
  final String name;
  final String username;
  final String email;
  // final Address address;
  final String phone;
  final String website;
  // final Company company;

  User(this.id, this.name, this.username, this.email, this.phone, this.website);

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      json['id'],
      json['name'],
      json['username'],
      json['email'],
      // json['address'],
      json['phone'],
      json['website'],
      // json['company']
    );
  }
}