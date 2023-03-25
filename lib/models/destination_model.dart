import 'dart:convert';

DestinationModel destinationModelFromJson(String str) => DestinationModel.fromJson(json.decode(str));

String destinationModelToJson(DestinationModel data) => json.encode(data.toJson());

class DestinationModel {
  DestinationModel({
    required this.name,
    required this.country,
    required this.price,
    required this.program,
    required this.description,
    required this.categories,
    required this.trending,
    required this.forFriends,
    required this.forHoneymoon,
  });

  String name;
  String country;
  int price;
  String program;
  String description;
  List<String> categories;
  bool trending;
  bool forFriends;
  bool forHoneymoon;

  factory DestinationModel.fromJson(Map<String, dynamic> json) => DestinationModel(
    name: json["name"],
    country: json["country"],
    price: json["price"],
    program: json["program"],
    description: json["description"],
    categories: json["categories"],
    trending: json["trending"],
    forFriends: json["forFriends"],
    forHoneymoon: json["forHoneymoon"],
  );

  Map<String, dynamic> toJson() => {
    "name": name,
    "country": country,
    "price": price,
    "program": program,
    "description": description,
    "categories": categories,
    "trending": trending,
    "forFriends": forFriends,
    "forHoneymoon": forHoneymoon
  };
}