class AgencyModel {
  final String agencyName;
  final String function;
  final String image;

  AgencyModel({
    required this.agencyName,
    required this.function,
    required this.image,
  });

  factory AgencyModel.fromJson(Map<String, dynamic> json) {
    return AgencyModel(
      agencyName: json['agency_name'],
      function: json['function'],
      image: json['image'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'agency_name': agencyName,
      'function': function,
      'image': image,
    };
  }
}
