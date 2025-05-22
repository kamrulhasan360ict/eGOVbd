import 'package:egov_bd/core/constant/app_text.dart';
import 'package:egov_bd/core/constant/size.dart';
import 'package:egov_bd/features/tourism/presentation/widgets/search_bar.dart';
import 'package:egov_bd/features/tourism/presentation/widgets/spot_location.dart';
import 'package:flutter/material.dart';
import 'package:latlong2/latlong.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:shimmer/shimmer.dart';

import '../data/model/tourist_data_model.dart';

class TourismDetailsScreen extends StatelessWidget {
  const TourismDetailsScreen({super.key, required this.spot});

  final TouristSpot spot;

  bool _isValidCoordinate(double? lat, double? lng) {
    return lat != null &&
        lng != null &&
        !lat.isNaN &&
        !lng.isNaN &&
        lat.abs() <= 90 &&
        lng.abs() <= 180;
  }

  @override
  Widget build(BuildContext context) {
    final bool hasValidCoordinates =
        _isValidCoordinate(spot.latitude, spot.longitude);
    final LatLng spotLatLng = hasValidCoordinates
        ? LatLng(spot.latitude!, spot.longitude!)
        : const LatLng(23.8103, 90.4125); // fallback to Dhaka

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text(AppText.tourism),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(AppSizes.paddingBody),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    IconButton(onPressed: () {}, icon: const Icon(Icons.home)),
                    const Icon(Icons.arrow_forward_ios_rounded),
                    const SizedBox(width: AppSizes.sizeBox),
                    Expanded(
                      child: Text(
                        spot.name ?? "",
                        style: AppSizes.normalBoldLeading(context),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: AppSizes.sizeBox),
                const TourismSearchBar(),
                const SizedBox(height: AppSizes.sizeBoxW),
                Center(
                  child: CachedNetworkImage(
                    height: AppSizes.imageHeight,
                    imageUrl: spot.images ?? "",
                    progressIndicatorBuilder:
                        (context, url, downloadProgress) => SizedBox(
                      width: double.infinity,
                      height: AppSizes.imageHeight,
                      child: Shimmer.fromColors(
                        baseColor: Colors.grey[300]!,
                        highlightColor: Colors.grey[100]!,
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                        ),
                      ),
                    ),
                    errorWidget: (context, url, error) =>
                        const Icon(Icons.error),
                  ),
                ),
                const SizedBox(height: AppSizes.sizeBoxW),
                Text(
                  spot.name ?? "",
                  style: AppSizes.locationName(context),
                ),
                const SizedBox(height: AppSizes.sizeBoxW),
                Text(spot.description ?? ""),
                const SizedBox(height: AppSizes.sizeBoxW),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(spot.name ?? "",
                        style: AppSizes.locationName(context)),
                    Text(AppText.getDirection,
                        style: AppSizes.normalTexButton(context)),
                  ],
                ),
                const SizedBox(height: AppSizes.sizeBoxW),

                // Only show map if coordinates are valid
                if (hasValidCoordinates)
                  SpotLocation(spotLatLng: spotLatLng)
                else
                  const Text(
                    'Location data not available',
                    style: TextStyle(color: Colors.grey),
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
