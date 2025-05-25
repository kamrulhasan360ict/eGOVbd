import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:url_launcher/url_launcher.dart';

import '../model/ngas_data_model.dart';

Future<List<NgaDatum>> loadNgAsDataModel() async {
  try {
    final String jsonString =
    await rootBundle.loadString('assets/data/nga_data.json');
    final Map<String, dynamic> jsonData = json.decode(jsonString);

    final List<dynamic> dataList = jsonData['nga data'];

    return dataList.map((item) => NgaDatum.fromJson(item)).toList();
  } catch (e, s) {
    print('Error loading agency data: $e\n$s');
    return [];
  }
}

     // website



void launchWebsite(String? url) async {
  if (url == null || url.isEmpty) {
    print('URL is null or empty');
    return;
  }

  final Uri uri = Uri.parse(url);

  if (await canLaunchUrl(uri)) {
    final bool launched = await launchUrl(
      uri,
      mode: LaunchMode.platformDefault, // or try LaunchMode.inAppWebView
    );
    if (!launched) {
      print('Could not launch $uri');
    }
  } else {
    print('Could not launch $url');
  }
}
