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
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: Column(
                children: [
                  Row(
                    children: [
                      Expanded(
                        flex: 1,
                        child: CircleAvatar(
                          radius: 50,
                          backgroundImage: AssetImage(
                            'assets/avatar.png',
                          ),
                          backgroundColor: Colors.black,
                        ),
                      ),
                      Expanded(
                        flex: 2,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "${user.name}",
                              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                            ),
                            Row(
                              children: [
                                Text("Username:", style: TextStyle(fontWeight: FontWeight.bold)),
                                Text(" ${user.username}"),
                              ],
                            ),
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
                            Row(
                              children: [
                                Text("Website:", style: TextStyle(fontWeight: FontWeight.bold)),
                                Text(" ${user.website}"),
                              ],
                            ),
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
                            Row(
                              children: [
                                Text("City:", style: TextStyle(fontWeight: FontWeight.bold)),
                                Text(" ${user.address.city}"),
                              ],
                            ),
                            Row(
                              children: [
                                Text("Street:", style: TextStyle(fontWeight: FontWeight.bold)),
                                Text(" ${user.address.street}"),
                              ],
                            ),
                            Row(
                              children: [
                                Text("Suite:", style: TextStyle(fontWeight: FontWeight.bold)),
                                Text(" ${user.address.suite}"),
                              ],
                            ),
                            Row(
                              children: [
                                Text("Zip code:", style: TextStyle(fontWeight: FontWeight.bold)),
                                Text(" ${user.address.zipcode}"),
                              ],
                            ),
                            Row(
                              children: [
                                Text("Geolocation:", style: TextStyle(fontWeight: FontWeight.bold)),
                                Text(" (Latitude: ${user.address.geo.lat}, Longitude: ${user.address.geo.lng})"),
                              ],
                            ),
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
                            Row(
                              children: [
                                Text("Name:", style: TextStyle(fontWeight: FontWeight.bold)),
                                Text(" ${user.company.name}"),
                              ],
                            ),
                            Row(
                              children: [
                                Text("Catch phrase:", style: TextStyle(fontWeight: FontWeight.bold)),
                                Text(" ${user.company.catchPhrase}"),
                              ],
                            ),
                            Row(
                              children: [
                                Text("Business:", style: TextStyle(fontWeight: FontWeight.bold)),
                                Text(" ${user.company.bs}"),
                              ],
                            ),
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
