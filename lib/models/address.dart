class Address {
  final String street;
  final String suite;
  final String city;
  final String zipcode;
  final Geo geo;

  Address(this.street, this.suite, this.city, this.zipcode, this.geo);

  factory Address.fromJson(Map<String, dynamic> json) {
    return Address(
      json['street'],
      json['suite'],
      json['city'],
      json['zipcode'],
      Geo.fromJson(json['geo'])
    );
  }
}

class Geo {
  final String lat;
  final String lng;

  Geo(this.lat, this.lng);

  factory Geo.fromJson(Map<String, dynamic> json){
    return Geo(
      json['lat'],
      json['lng']
    );
  }
}