import 'package:egov_bd/core/constant/size.dart';
import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';

class SpotLocation extends StatelessWidget {
  const SpotLocation({
    super.key,
    required this.spotLatLng,
  });

  final LatLng spotLatLng;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: AppSizes.locationHeight,
      child: FlutterMap(
        options: MapOptions(
          initialCenter: spotLatLng,
          initialZoom: 13,
        ),
        children: [
          TileLayer(
            urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
          ),
          MarkerLayer(
            markers: [
              Marker(
                point: spotLatLng,
                width: 40,
                height: 40,
                child: const Icon(
                  Icons.location_pin,
                  color: Colors.red,
                  size: 40,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}