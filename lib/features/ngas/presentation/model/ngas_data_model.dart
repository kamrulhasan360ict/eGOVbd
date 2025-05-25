// To parse this JSON data, do
//
//     final ngAsDataModel = ngAsDataModelFromJson(jsonString);

import 'dart:convert';

NgAsDataModel ngAsDataModelFromJson(String str) => NgAsDataModel.fromJson(json.decode(str));

String ngAsDataModelToJson(NgAsDataModel data) => json.encode(data.toJson());

class NgAsDataModel {
  final List<NgaDatum>? ngaData;

  NgAsDataModel({
    this.ngaData,
  });

  factory NgAsDataModel.fromJson(Map<String, dynamic> json) => NgAsDataModel(
    ngaData: json["nga data"] == null ? [] : List<NgaDatum>.from(json["nga data"]!.map((x) => NgaDatum.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "nga data": ngaData == null ? [] : List<dynamic>.from(ngaData!.map((x) => x.toJson())),
  };
}

class NgaDatum {
  final String? agencyName;
  final String? function;
  final String? website;
  final String? image;

  NgaDatum({
    this.agencyName,
    this.function,
    this.website,
    this.image,
  });

  factory NgaDatum.fromJson(Map<String, dynamic> json) => NgaDatum(
    agencyName: json["agency_name"],
    function: json["function"],
    website: json["website"],
    image: json["image"],
  );

  Map<String, dynamic> toJson() => {
    "agency_name": agencyName,
    "function": function,
    "website": website,
    "image": image,
  };
}
