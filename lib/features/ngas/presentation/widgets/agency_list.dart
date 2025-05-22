import 'package:egov_bd/core/constant/app_colors.dart';
import 'package:egov_bd/core/constant/size.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../data/json_data.dart';
import '../model/ngas_data_model.dart';

class AgencyListView extends StatefulWidget {
  const AgencyListView({super.key});

  @override
  State<AgencyListView> createState() => _AgencyListViewState();
}

class _AgencyListViewState extends State<AgencyListView> {
  late Future<List<AgencyModel>> futureData;

  @override
  void initState() {
    super.initState();
    futureData = loadAgencyData();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<AgencyModel>>(
      future: futureData,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(child: CircularProgressIndicator());
        } else if (snapshot.hasError) {
          return Center(child: Text("Error: ${snapshot.error}"));
        }

        final agencies = snapshot.data ?? [];

        if (agencies.isEmpty) {
          return const Center(child: Text("No agencies found."));
        }

        return ListView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: agencies.length,
          itemBuilder: (context, index) {
            final agency = agencies[index];
            return Card(
              margin: const EdgeInsets.symmetric( vertical: 10),
              color: Colors.white,

              child:ListTile(
                leading: Image.network(
                  agency.image,
                  width: 50,
                  height: 50,
                  fit: BoxFit.cover,
                  loadingBuilder: (context, child, loadingProgress) {
                    if (loadingProgress == null) return child;
                    return const SizedBox(
                      width: 50,
                      height: 50,
                      child: Center(
                        child: CircularProgressIndicator(strokeWidth: 1.5),
                      ),
                    );
                  },
                  errorBuilder: (context, error, stackTrace) => const Icon(Icons.broken_image, size: 40),
                ),
                title: Text(agency.agencyName,style: AppSizes.bolds(context),),
                subtitle: Text(agency.function,style: AppSizes.smallText(context),),
                trailing:  Icon(Icons.arrow_forward_ios_rounded,color: AppColors.leadingTColor,),
              ),

            );
          },
        );
      },
    );
  }
}
