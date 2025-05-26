import 'package:egov_bd/core/constant/app_route/app_route.dart';
import 'package:flutter/material.dart';

import '../data/json_data.dart';
import '../model/news_data_model.dart';
import '../pages/news_webview_screen.dart';

class News_list extends StatelessWidget {
  const News_list({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<BdNewsChannel>>(
      future: loadNewsDataModel(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(child: CircularProgressIndicator());
        } else if (snapshot.hasError) {
          return Center(child: Text("Error: ${snapshot.error}"));
        }

        final newsDataList = snapshot.data ?? [];

        if (newsDataList.isEmpty) {
          return const Center(child: Text("No News List found."));
        }

        return ListView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: newsDataList.length,
          itemBuilder: (context, index) {
            final agency = newsDataList[index];
            return GestureDetector(
              onTap: () {
               AppRoutes.push(context, page: NewsWebviewScreen(url: agency.website!,
                 title: agency.name ?? "News",));
                // print('data');
              },
              child: Card(
                margin: const EdgeInsets.symmetric(vertical: 10),
                color: Colors.white,
                child: ListTile(
                  leading: Image.network(
                    agency.image ?? '',
                    width: 50,
                    height: 50,
                    fit: BoxFit.cover,
                    loadingBuilder: (context, child, loadingProgress) {
                      if (loadingProgress == null) return child;
                      return const SizedBox(
                        width: 50,
                        height: 50,
                        child: Center(child: CircularProgressIndicator(strokeWidth: 1.5)),
                      );
                    },
                    errorBuilder: (context, error, stackTrace) => const Icon(Icons.broken_image, size: 40),
                  ),
                  title: Text(agency.name ?? 'No Name'),
                  // subtitle: Text(agency.function ?? 'No Function'),
                  trailing: const Icon(Icons.arrow_forward_ios_rounded),
                ),
              ),
            );
          },
        );
      },
    );
  }
}
