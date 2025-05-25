
import 'dart:convert';

NewsDataModel newsDataModelFromJson(String str) => NewsDataModel.fromJson(json.decode(str));

String newsDataModelToJson(NewsDataModel data) => json.encode(data.toJson());

class NewsDataModel {
  final List<BdNewsChannel>? bdNewsChannels;

  NewsDataModel({
    this.bdNewsChannels,
  });

  factory NewsDataModel.fromJson(Map<String, dynamic> json) => NewsDataModel(
    bdNewsChannels: json["bd_news_channels"] == null ? [] : List<BdNewsChannel>.from(json["bd_news_channels"]!.map((x) => BdNewsChannel.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "bd_news_channels": bdNewsChannels == null ? [] : List<dynamic>.from(bdNewsChannels!.map((x) => x.toJson())),
  };
}

class BdNewsChannel {
  final String? name;
  final String? website;
  final String? image;

  BdNewsChannel({
    this.name,
    this.website,
    this.image,
  });

  factory BdNewsChannel.fromJson(Map<String, dynamic> json) => BdNewsChannel(
    name: json["name"],
    website: json["website"],
    image: json["image"],
  );

  Map<String, dynamic> toJson() => {
    "name": name,
    "website": website,
    "image": image,
  };
}
