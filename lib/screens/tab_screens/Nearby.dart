import 'dart:async';

import 'package:flutter/material.dart';
// import 'package:google_maps_flutter/google_maps_flutter.dart';

class Nearby extends StatefulWidget {
  @override
  _NearbyState createState() => _NearbyState();
}

class _NearbyState extends State<Nearby> {
  // Completer<GoogleMapController> _controller = Completer();
  // static final CameraPosition mylocation = CameraPosition(target: LatLng(0, 0));
  // GoogleMapController mapController;
  // final LatLng center = const LatLng(45.521563, -122.677433);
  // void onmapcreated(GoogleMapController gc) {
  //   mapController = gc;
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.arrow_back_ios,
              color: Colors.red,
            )),
        backgroundColor: Colors.white,
        title: Text(
          "  Near By",
          style: TextStyle(color: Colors.black),
        ),
      ),
      // body: SafeArea(
      //     // child: GoogleMap(
      //     //   // initialCameraPosition: mylocation ,
      //     //   mapType: MapType.normal,
      //     //   onMapCreated: onmapcreated,
      //     //   initialCameraPosition: CameraPosition(
      //     //     target: center,
      //     //     zoom: 11.0,
      //     //   ),
      //     ),
      // ),
    );
  }
}
