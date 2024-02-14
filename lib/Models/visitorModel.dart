// To parse this JSON data, do
//
//     final visitor = visitorFromJson(jsonString);

import 'dart:convert';

List<Visitor> visitorFromJson(String str) => List<Visitor>.from(json.decode(str).map((x) => Visitor.fromJson(x)));

String visitorToJson(List<Visitor> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Visitor {
  String name;
  String address;
  String phone;
  String purpose;

  Visitor({
    required this.name,
    required this.address,
    required this.phone,
    required this.purpose,
  });

  factory Visitor.fromJson(Map<String, dynamic> json) => Visitor(
    name: json["name"],
    address: json["address"],
    phone: json["phone"],
    purpose: json["purpose"],
  );

  Map<String, dynamic> toJson() => {
    "name": name,
    "address": address,
    "phone": phone,
    "purpose": purpose,
  };
}
