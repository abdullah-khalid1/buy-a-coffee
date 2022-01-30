import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MyMap extends StatefulWidget {
  const MyMap({Key? key}) : super(key: key);

  @override
  _MyMapState createState() => _MyMapState();
}

class _MyMapState extends State<MyMap> {
  var _mapcameraPosition = CameraPosition(
      target: LatLng(32.08534000135643, 74.17931539842597), zoom: 11);

  late Marker _originMarker;
  late Marker _destinationMarker;

  late GoogleMapController _googleMapController;
  @override
  void dispose() {
    _googleMapController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: mAddGoogleMapToBody(),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.location_pin),
        onPressed: () {
          _googleMapController.animateCamera(
              CameraUpdate.newCameraPosition(_mapcameraPosition));
        },
      ),
    );
  }

// Add Marker To The Map
  void addMarkerToMap(LatLng Locationposition) {
    if (_originMarker == null ||
        (_originMarker != null && _destinationMarker != null)) {
      setState(() {
        _originMarker = Marker(
            markerId: MarkerId('originMarkerId'),
            icon:
                BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueBlue),
            position: Locationposition);
      });
    } else {
      setState(() {
        _originMarker = Marker(
            markerId: MarkerId('destinationMarkerId'),
            icon:
                BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueCyan),
            position: Locationposition);
      });
    }
  }

// This is going to add google map to the body
  GoogleMap mAddGoogleMapToBody() {
    return GoogleMap(
      initialCameraPosition: _mapcameraPosition,
      markers: {_destinationMarker, _originMarker},
      onMapCreated: (controller) => _googleMapController = controller,
      mapType: MapType.hybrid,
      myLocationButtonEnabled: true,
      zoomControlsEnabled: false,
      onLongPress: addMarkerToMap,
    );
  }
}
