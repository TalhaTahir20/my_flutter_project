// ignore_for_file: prefer_interpolation_to_compose_strings, avoid_print

import 'package:flutter/material.dart';
import 'package:geocoding/geocoding.dart';

class ConvertToLatLangToAddress extends StatefulWidget {
  ConvertToLatLangToAddress({Key? key}) : super(key: key);

  @override
  State<ConvertToLatLangToAddress> createState() =>
      _ConvertToLatLangToAddressState();
}

class _ConvertToLatLangToAddressState extends State<ConvertToLatLangToAddress> {
  String stAddress = '', stAdd = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(stAddress),
          Text(stAdd),
          GestureDetector(
            onTap: () async {
              List<Location> locations =
                  await locationFromAddress("Gronausestraat 710, Enschede");

              List<Placemark> placemarks =
                  await placemarkFromCoordinates(52.2165157, 6.9437819);

              //  final coordinates = Coordinates(21.5203, 39.2309);

              setState(() {
                stAddress = locations.last.longitude.toString() +
                    "" +
                    locations.last.longitude.toString();

                stAdd = placemarks.reversed.last.locality.toString() +
                    "" +
                    placemarks.reversed.last.street.toString();
              });
            },
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 50,
                color: Colors.orange,
                child: const Center(
                  child: Text(
                    'Convert',
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
