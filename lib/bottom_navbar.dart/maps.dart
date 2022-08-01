// ignore_for_file: non_constant_identifier_names, prefer_interpolation_to_compose_strings, avoid_print, prefer_final_fields, prefer_const_constructors, duplicate_ignore

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class Maps extends StatefulWidget {
  const Maps({Key? key}) : super(key: key);

  @override
  State<Maps> createState() => _MapsState();
}

class _MapsState extends State<Maps> {
  final Completer<GoogleMapController> _controller = Completer();
  // ignore: prefer_const_constructors
  static  CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(21.513405569441485, 39.2271465373906),
    zoom: 14.4746,
  );

  final List<Marker> _markers = <Marker>[
    // ignore: prefer_const_constructors
    Marker(
        markerId: MarkerId('1'),
        position: LatLng(21.513405569441485, 39.2271465373906),
        infoWindow: InfoWindow(title: 'The title of the marker')),
  ];
  
loadData(){
  getUserCurrentLocation().then((value) async {
            print('my current location');
            print(value.latitude.toString() + '' + value.longitude.toString());

            _markers.add(
              Marker(
                markerId: MarkerId('2'),
                position: LatLng(value.latitude, value.longitude),
                infoWindow: InfoWindow(title: 'My current location'),
              ),
            );
            CameraPosition cameraPosition = CameraPosition(
              zoom: 14,
              target: LatLng(value.latitude, value.longitude),
            );

            final GoogleMapController controller = await _controller.future;

            controller.animateCamera(CameraUpdate.newCameraPosition(cameraPosition));

            setState(() {
              
            });
          });
}
  

  Future<Position> getUserCurrentLocation() async {
    await Geolocator.requestPermission()
        .then((value) {})
        .onError((error, stackTrace) {
      print('error' + error.toString());
    });
    return await Geolocator.getCurrentPosition();
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    loadData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: GoogleMap(
          initialCameraPosition: _kGooglePlex,
          mapType: MapType.normal,
          markers: Set<Marker>.of(_markers),
          onMapCreated: (GoogleMapController controller) {
            _controller.complete(controller);
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          getUserCurrentLocation().then((value) async {
            print('my current location');
            print(value.latitude.toString() + '' + value.longitude.toString());

            _markers.add(
              Marker(
                markerId: MarkerId('2'),
                position: LatLng(value.latitude, value.longitude),
                infoWindow: InfoWindow(title: 'My current location'),
              ),
            );
            CameraPosition cameraPosition = CameraPosition(
              zoom: 14,
              target: LatLng(value.latitude, value.longitude),
            );

            final GoogleMapController controller = await _controller.future;

            controller.animateCamera(CameraUpdate.newCameraPosition(cameraPosition));

            setState(() {
              
            });
          });
        },
        child: Icon(Icons.location_disabled_outlined),
      ),
    );
  }
}
