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
                      Container(
                        child: CircleAvatar(
                          radius: 50,
                          backgroundImage: NetworkImage(
                            'https://www.iconfinder.com/data/icons/social-messaging-ui-color-shapes-2-free/128/social-reddit-circle-512.png',
                          ),
                        ),
                        padding: EdgeInsets.all(8.0),
                      ),
                      Expanded(
                        flex: 2,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "${user.name}",
                                style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                              ),

                              Padding(
                                padding: const EdgeInsets.symmetric(vertical: 1.0),
                                child: Row(
                                  children: [
                                    Text("Username:", style: TextStyle(fontWeight: FontWeight.bold)),
                                    Text(" ${user.username}"),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(vertical: 1.0),
                                child: Row(
                                  children: [
                                    Text("Email:", style: TextStyle(fontWeight: FontWeight.bold)),
                                    Text(" ${user.email}"),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(vertical: 1.0),
                                child: Row(
                                  children: [
                                    Text("Phone:", style: TextStyle(fontWeight: FontWeight.bold)),
                                    Text(" ${user.phone}"),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(vertical: 1.0),
                                child: Row(
                                  children: [
                                    Text("Website:", style: TextStyle(fontWeight: FontWeight.bold)),
                                    Text(" ${user.website}"),
                                  ],
                                ),
                              ),
                            ],
                          ),
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
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 1.0),
                              child: Row(
                                children: [
                                  Text("City:", style: TextStyle(fontWeight: FontWeight.bold)),
                                  Text(" ${user.address.city}"),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 1.0),
                              child: Row(
                                children: [
                                  Text("Street:", style: TextStyle(fontWeight: FontWeight.bold)),
                                  Text(" ${user.address.street}"),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 1.0),
                              child: Row(
                                children: [
                                  Text("Suite:", style: TextStyle(fontWeight: FontWeight.bold)),
                                  Text(" ${user.address.suite}"),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 1.0),
                              child: Row(
                                children: [
                                  Text("Zip code:", style: TextStyle(fontWeight: FontWeight.bold)),
                                  Text(" ${user.address.zipcode}"),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 1.0),
                              child: Row(
                                children: [
                                  Text("Geolocation:", style: TextStyle(fontWeight: FontWeight.bold)),
                                  Text(" (Latitude: ${user.address.geo.lat}, Longitude: ${user.address.geo.lng})"),
                                ],
                              ),
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
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 1.0),
                              child: Row(
                                children: [
                                  Text("Name:", style: TextStyle(fontWeight: FontWeight.bold)),
                                  Text(" ${user.company.name}"),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 1.0),
                              child: Row(
                                children: [
                                  Text("Catch phrase:", style: TextStyle(fontWeight: FontWeight.bold)),
                                  Text(" ${user.company.catchPhrase}"),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 1.0),
                              child: Row(
                                children: [
                                  Text("Business:", style: TextStyle(fontWeight: FontWeight.bold)),
                                  Text(" ${user.company.bs}"),
                                ],
                              ),
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
