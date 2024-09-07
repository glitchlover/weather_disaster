// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:latlong2/latlong.dart';

class MapMarkerModel {
  final LatLng position;
  final String title;
  final String description;
  MapMarkerModel({
    required this.position,
    required this.title,
    required this.description,
  });
}
