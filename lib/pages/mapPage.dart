import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_polyline_points/flutter_polyline_points.dart';
import 'package:foof_app/models/subCategory.dart';
import 'package:foof_app/widgets/mapBottomArea.dart';
import 'package:foof_app/widgets/mapUserDetails.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

const LatLng SOURCE_LOCATION = LatLng(32.083087245088095, 74.17763806449871);
const LatLng DEST_LOCATION = LatLng(32.1032362676912, 74.18921875904941);
const double CAMERA_ZOOM = 16;
const double CAMERA_TILT = 80;
const double CAMERA_BEARING = 30;
const double PIN_VISIBLE_POSITION = 20;
const double PIN_INVISIBLE_POSITION = -220;

class MapPage extends StatefulWidget {
  SubCategory? subCategory;

  @override
  _MapPageState createState() => _MapPageState();
}

class _MapPageState extends State<MapPage> {
  Completer<GoogleMapController> _controller = Completer();
  late BitmapDescriptor sourceIcon;
  late BitmapDescriptor destinationIcon;
  Set<Marker> _markers = Set<Marker>();
  double pinPillPosition = PIN_VISIBLE_POSITION;
  late LatLng currentLocation;
  late LatLng destinationLocation;
  bool userBadgeSelected = false;

  Set<Polyline> _polylines = Set<Polyline>();
  List<LatLng> polylineCoordinates = [];
  late PolylinePoints polylinePoints;

  @override
  void initState() {
    super.initState();

    polylinePoints = PolylinePoints();

    // set up initial locations
    this.setInitialLocation();
    this.setSourceAndDestinationMarkerIcons(context);
  }

  void setSourceAndDestinationMarkerIcons(BuildContext context) async {
    sourceIcon = await BitmapDescriptor.fromAssetImage(
        ImageConfiguration(devicePixelRatio: 1.0),
        'assets/images/destination_img.png');

    destinationIcon = await BitmapDescriptor.fromAssetImage(
        ImageConfiguration(devicePixelRatio: 2.0),
        'assets/images/source_img.png');
  }

  void setInitialLocation() {
    currentLocation =
        LatLng(SOURCE_LOCATION.latitude, SOURCE_LOCATION.longitude);

    destinationLocation =
        LatLng(DEST_LOCATION.latitude, DEST_LOCATION.longitude);
  }

  @override
  Widget build(BuildContext context) {
    CameraPosition initialCameraPosition = CameraPosition(
        zoom: CAMERA_ZOOM,
        tilt: CAMERA_TILT,
        bearing: CAMERA_BEARING,
        target: SOURCE_LOCATION);

    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Container(
              child: GoogleMap(
                myLocationButtonEnabled: true,
                compassEnabled: false,
                tiltGesturesEnabled: false,
                markers: _markers,
                mapType: MapType.normal,
                initialCameraPosition: initialCameraPosition,
                onMapCreated: (GoogleMapController controller) {
                  _controller.complete(controller);
                  showPinsOnMap();
                },
              ),
            ),
          ),
          MapUserDetail(),
          Positioned(right: 0, left: 0, bottom: 20, child: MapBottomArea()),
        ],
      ),
    );
  }

  void showPinsOnMap() {
    setState(() {
      _markers.add(
        Marker(
            markerId: MarkerId('sourcePin'),
            position: currentLocation,
            icon: sourceIcon,
            onTap: () {
              setState(() {
                this.userBadgeSelected = true;
              });
            }),
      );

      _markers.add(
        Marker(
            markerId: MarkerId('destinationPin'),
            position: destinationLocation,
            icon: destinationIcon,
            onTap: () {
              setState(() {
                this.pinPillPosition = PIN_VISIBLE_POSITION;
              });
            }),
      );
    });
  }
}
