import 'package:flutter/material.dart';

import '../../../../core/constant/image_url.dart';
import '../../../../core/constant/size.dart';
import '../widgets/news_list.dart';
import '../widgets/news_search_bar.dart';

class NewsChannelListScreen extends StatefulWidget {
  const NewsChannelListScreen({super.key});

  @override
  State<NewsChannelListScreen> createState() => _NewsChannelListScreenState();
}

class _NewsChannelListScreenState extends State<NewsChannelListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text('News Channel'),
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
                  NewsSearchBar(),
                  SizedBox(height: AppSizes.sizeBox,),
                  // NGAsListView(),
                  News_list(),

                ],

              ),
            ),
          ),
        )

    );
  }
}
