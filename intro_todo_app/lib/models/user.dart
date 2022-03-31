// To parse this JSON data, do
//
//     final user = userFromMap(jsonString);

import 'dart:convert';

List<User> userFromMap(String str) => List<User>.from(json.decode(str).map((x) => User.fromMap(x)));

String userToMap(List<User> data) => json.encode(List<dynamic>.from(data.map((x) => x.toMap())));

class User {
    User({
        this.id,
        this.name,
        this.username,
        this.email,
        this.address,
        this.phone,
        this.website,
        this.company,
    });

    int? id;
    String? name;
    String? username;
    String? email;
    Address? address;
    String? phone;
    String? website;
    Company? company;

    factory User.fromMap(Map<String, dynamic> json) => User(
        id: json["id"],
        name: json["name"],
        username: json["username"],
        email: json["email"],
        address: Address.fromMap(json["address"]),
        phone: json["phone"],
        website: json["website"],
        company: Company.fromMap(json["company"]),
    );

    Map<String, dynamic> toMap() => {
        "id": id,
        "name": name,
        "username": username,
        "email": email,
        "address": address!.toMap(),
        "phone": phone,
        "website": website,
        "company": company!.toMap(),
    };
}

class Address {
    Address({
        this.street,
        this.suite,
        this.city,
        this.zipcode,
        this.geo,
    });

    String? street;
    String? suite;
    String? city;
    String? zipcode;
    Geo? geo;

    factory Address.fromMap(Map<String, dynamic> json) => Address(
        street: json["street"],
        suite: json["suite"],
        city: json["city"],
        zipcode: json["zipcode"],
        geo: Geo.fromMap(json["geo"]),
    );

    Map<String, dynamic> toMap() => {
        "street": street,
        "suite": suite,
        "city": city,
        "zipcode": zipcode,
        "geo": geo!.toMap(),
    };
}

class Geo {
    Geo({
        this.lat,
        this.lng,
    });

    String? lat;
    String? lng;

    factory Geo.fromMap(Map<String, dynamic> json) => Geo(
        lat: json["lat"],
        lng: json["lng"],
    );

    Map<String, dynamic> toMap() => {
        "lat": lat,
        "lng": lng,
    };
}

class Company {
    Company({
        this.name,
        this.catchPhrase,
        this.bs,
    });

    String? name;
    String? catchPhrase;
    String? bs;

    factory Company.fromMap(Map<String, dynamic> json) => Company(
        name: json["name"],
        catchPhrase: json["catchPhrase"],
        bs: json["bs"],
    );

    Map<String, dynamic> toMap() => {
        "name": name,
        "catchPhrase": catchPhrase,
        "bs": bs,
    };
}
