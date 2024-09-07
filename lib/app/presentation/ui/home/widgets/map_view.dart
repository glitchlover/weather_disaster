import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:get/get.dart';
import 'package:latlong2/latlong.dart';
import 'package:weather_disaster/app/presentation/ui/home/controllers/map_view_controller.dart';

class MapView extends GetView<MapViewController> {
  const MapView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return FlutterMap(
      mapController: controller.mapController,
      options: MapOptions(
        initialCenter: LatLng(23.684994, 90.356331), // Center the map over London
        initialZoom: 12.8,
        onTap: (tapPosition, latLang){},
      ),
      children: [
        TileLayer( // Display map tiles from any source
          urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png', // OSMF's Tile Server
          userAgentPackageName: 'com.example.app',
          maxNativeZoom: 19, // Scale tiles when the server doesn't support higher zoom levels
          // And many more recommended properties!
        ),
        const RichAttributionWidget( // Include a stylish prebuilt attribution widget that meets all requirments
          attributions: [
            TextSourceAttribution(
              'OpenStreetMap contributors',
              // onTap: () => launchUrl(Uri.parse('https://openstreetmap.org/copyright')), // (external)
            ),
            // Also add images...
          ],
        ),
      ],
    );
  }
}