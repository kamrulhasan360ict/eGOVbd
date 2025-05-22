class TouristSpot {
  final String? name;
  final String? description;
  final String? images;
  final String? type;
  final String? location;
  final double? latitude;
  final double? longitude;

  TouristSpot({
    required this.name,
    required this.description,
    required this.images,
    required this.type,
    required this.location,

    required this.latitude,
    required this.longitude,
  });

  factory TouristSpot.fromJson(Map<String, dynamic> json) {
    return TouristSpot(
      name: json['name'] as String?,
      description: json['description'] as String?,
      images: json['images'] as String?,
      type: json['type'] as String?,
      location: json['location'] as String?,
      latitude: (json['latitude'] != null) ? (json['latitude'] as num).toDouble() : null,
      longitude: (json['longitude'] != null) ? (json['longitude'] as num).toDouble() : null,
    );
  }

}
