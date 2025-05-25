import 'package:flutter/material.dart';

import '../data/json_data.dart';
import '../model/ngas_data_model.dart';

class Ngas_list extends StatelessWidget {
  const Ngas_list({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<NgaDatum>>(
      future: loadNgAsDataModel(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(child: CircularProgressIndicator());
        } else if (snapshot.hasError) {
          return Center(child: Text("Error: ${snapshot.error}"));
        }

        final ngaDataList = snapshot.data ?? [];

        if (ngaDataList.isEmpty) {
          return const Center(child: Text("No agencies found."));
        }

        return ListView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: ngaDataList.length,
          itemBuilder: (context, index) {
            final agency = ngaDataList[index];
            return GestureDetector(
              onTap: () {
                launchWebsite(agency.website);
                print('data');
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
                  title: Text(agency.agencyName ?? 'No Name'),
                  subtitle: Text(agency.function ?? 'No Function'),
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
