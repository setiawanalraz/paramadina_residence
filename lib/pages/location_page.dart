import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import '../widgets/my_appbar.dart';

class LocationPage extends StatefulWidget {
  const LocationPage({Key? key}) : super(key: key);

  @override
  State<LocationPage> createState() => LocationPageState();
}

class LocationPageState extends State<LocationPage> {
  final Completer<GoogleMapController> _controller =
      Completer<GoogleMapController>();

  static const CameraPosition _initPosition = CameraPosition(
    target: LatLng(-6.5481390, 106.7513964),
    zoom: 14,
  );

  static const CameraPosition _targetPosition = CameraPosition(
    target: LatLng(-6.5481390, 106.7513964),
    zoom: 18,
  );

  final LatLng _targetMarker = const LatLng(-6.5481390, 106.7513964);

  BitmapDescriptor markerIcon = BitmapDescriptor.defaultMarker;

  @override
  void initState() {
    addCustomIcon();
    super.initState();
  }

  void addCustomIcon() {
    BitmapDescriptor.fromAssetImage(const ImageConfiguration(),
            "assets/images/custom_location_marker.png")
        .then(
      (icon) {
        setState(() {
          markerIcon = icon;
        });
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(titleAppBar: "Lokasi"),
      body: GoogleMap(
        mapType: MapType.normal,
        initialCameraPosition: _initPosition,
        onMapCreated: (GoogleMapController controller) {
          _controller.complete(controller);
        },
        zoomControlsEnabled: false,
        markers: {
          Marker(
            markerId: const MarkerId("target_marker"),
            position: _targetMarker,
            icon: markerIcon,
            infoWindow: const InfoWindow(title: "Paramadina Residence"),
          ),
        },
      ),
      floatingActionButton: Stack(
        children: [
          Positioned(
            right: 0,
            bottom: 45,
            child: FloatingActionButton(
              backgroundColor: Colors.green,
              onPressed: _goToTargetLocation,
              child: const Icon(
                Icons.location_on,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Future<void> _goToTargetLocation() async {
    final GoogleMapController controller = await _controller.future;
    controller.animateCamera(CameraUpdate.newCameraPosition(_targetPosition));
  }
}
