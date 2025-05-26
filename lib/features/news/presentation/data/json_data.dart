import 'dart:convert';

import 'package:flutter/services.dart';

import '../model/news_data_model.dart';


Future<List<BdNewsChannel>> loadNewsDataModel() async {
  try {
    final String jsonString =
    await rootBundle.loadString('assets/data/news_data.json');
    final Map<String, dynamic> jsonData = json.decode(jsonString);

    final List<dynamic> dataList = jsonData['bd_news_channels'];

    return dataList.map((item) => BdNewsChannel.fromJson(item)).toList();
  } catch (e) {
    print('Error loading agency data: $e');
    return [];
  }
}
