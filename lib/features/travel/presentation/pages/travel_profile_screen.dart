import 'package:egov_bd/core/constant/app_colors.dart';
import 'package:egov_bd/core/constant/app_images.dart';
import 'package:egov_bd/core/constant/size.dart';
import 'package:flutter/material.dart';

class TravelProfileScreen extends StatefulWidget {
  const TravelProfileScreen({super.key, required this.name});

  final String name;

  @override
  State<TravelProfileScreen> createState() => _TravelProfileScreenState();
}

class _TravelProfileScreenState extends State<TravelProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.backgroundColor,
        title: Text(widget.name),
        centerTitle: true,
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.home))],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
                SizedBox(
                  height: 50,
                  width: 100,
                  child: Image.asset(AppImages.eTravel),
                ),
                const Spacer(),
                const Text('Hi,'),
                SizedBox(width: AppSizes.sizeBox),
                Text(
                  'MD.ZAYED',
                  style: AppSizes.bolds(context),
                ),
                SizedBox(width: AppSizes.sizeBox),
                Image.asset(
                  AppImages.bdLogo,
                  width: 30,
                  height: 30,
                ),
                SizedBox(width: AppSizes.sizeBox),
                const Icon(Icons.menu),
              ],
            ),
            SizedBox(
              height: AppSizes.lsizeBox16,
            ),
            Column(
              children: [
                Stack(
                  children: [
                    Image.asset(
                      AppImages.bdLogo,
                    ),
                    Positioned(
                      top: 100,left: 0,right: 0  ,
                        child: Padding(
                          padding:  EdgeInsets.all(AppSizes.normalPadding),
                          child: Column(
                                                children: [
                          Column(
                            children: [
                              CircleAvatar(

                                child: Image.asset(AppImages.profile,),
                                radius: 20,
                              ),
                              SizedBox(height: AppSizes.sizeBox,),
                              Text('MD.ZAYED',style: AppSizes.bolds(context),),
                              SizedBox(height: AppSizes.sizeBox,),
                              Text('Passport Number\nA0145975'),
                              SizedBox(height: AppSizes.sizeBoxW,),
                              ElevatedButton(onPressed: (){}, child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text('New Travel Declaration',style: AppSizes.normalTextBold(context),),
                                  SizedBox(width: AppSizes.sizeBox,),
                                  Icon(Icons.arrow_circle_right,color: AppColors.backgroundColor,)
                                ],
                              )),



                            ],
                          )
                                                ],
                                              ),
                        ),
                    )
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
