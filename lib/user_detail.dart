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
      body: Column(
        children: [
          Card(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 8.0),
                    child: Center(
                      child: Text(
                        "Personal Information",
                        style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      Expanded(
                        flex: 1,
                        child: FlutterLogo(),
                      ),
                      Expanded(
                        flex: 2,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Name: ${user.name}"),
                            Text("Username: ${user.username}"),
                            Text("Email: ${user.email}"),
                            Text("Phone: ${user.phone}"),
                            Text("Website: ${user.website}"),
                          ],
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
          Card(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 8.0),
                    child: Center(
                      child: Text(
                        "Address Information",
                        style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("City: ${user.address.city}"),
                            Text("Street: ${user.address.street}"),
                            Text("Suite: ${user.address.suite}"),
                            Text("Zip code: ${user.address.zipcode}"),
                            Text("Geolocation: (Latitude: ${user.address.geo.lat}, Longitude: ${user.address.geo.lng})")
                          ],
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
          Card(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 8.0),
                    child: Center(
                      child: Text(
                        "Company Information",
                        style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Name: ${user.company.name}"),
                            Text("Catch phrase: ${user.company.catchPhrase}"),
                            Text("Business: ${user.company.bs}"),
                          ],
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
