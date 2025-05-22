import 'dart:convert';
import 'package:egov_bd/features/tourism/presentation/data/model/tourist_data_model.dart';
import 'package:flutter/services.dart';

Future<List<TouristSpot>> loadTouristData() async {
  final String jsonString =
  await rootBundle.loadString('assets/data/tourist_data.json');
  final Map<String, dynamic> jsonData = json.decode(jsonString);
  final List<dynamic> dataList = jsonData['data'];

  return dataList.map((item) => TouristSpot.fromJson(item)).toList();
}
