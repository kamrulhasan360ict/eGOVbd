import 'package:egov_bd/core/constant/image_url.dart';
import 'package:egov_bd/core/constant/size.dart';
import 'package:egov_bd/features/ngas/presentation/widgets/agency_list.dart';
import 'package:egov_bd/features/ngas/presentation/widgets/ngas_search_bar.dart';
import 'package:flutter/material.dart';

class NgaSScreen extends StatefulWidget {
  const NgaSScreen({super.key});

  @override
  State<NgaSScreen> createState() => _NgaSScreenState();
}

class _NgaSScreenState extends State<NgaSScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text('NGA'),
        centerTitle: true,

      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(AppSizes.paddingBody),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Image.asset(ImageUrl.ngaLogo),
                SizedBox(height: AppSizes.sizeBox,),
                NgaSSearchBar(),
                SizedBox(height: AppSizes.sizeBox,),
                AgencyListView()

              ],

            ),
          ),
        ),
      ),
    );
  }
}
