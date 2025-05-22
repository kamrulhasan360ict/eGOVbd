import 'dart:convert';

import 'package:flutter/services.dart';

import '../model/ngas_data_model.dart';

Future<List<AgencyModel>> loadAgencyData() async {
  try {
    final String jsonString =
        await rootBundle.loadString('assets/data/nga_data.json');
    final Map<String, dynamic> jsonData = json.decode(jsonString);

    // print(jsonData);
    if (jsonData['nga data'] == null || jsonData['nga data'] is! List) {
      throw FormatException('Invalid or missing "nga data" field');
    }

    final List<dynamic> dataList = jsonData['nga data'];

    return dataList.map((item) => AgencyModel.fromJson(item)).toList();
  } catch (e) {
    print('Error loading agency data: $e');

    return [];
  }
}
