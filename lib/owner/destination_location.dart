import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:sample/open_street_map.dart';

import '../globals.dart';

class OwnerDestinationLocation extends StatefulWidget {
  const OwnerDestinationLocation({Key? key}) : super(key: key);

  @override
  State<OwnerDestinationLocation> createState() => _OwnerDestinationLocationState();
}

class _OwnerDestinationLocationState extends State<OwnerDestinationLocation> {
  String address='';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: OpenStreetMapSearchAndPick(
          center: LatLong(35.7018808, 51.3377326),
          onPicked: (pickedData) {
            setState(() {
              address=pickedData.address;

            });

             ownerDestinationLocation = pickedData.address;
             ownerDestinationLat = pickedData.latLong.latitude;
             ownerDestinationLong = pickedData.latLong.longitude;
            // print(pickedData.latLong.latitude);
            // print(pickedData.latLong.longitude);
            // print(pickedData.address);
          }),
    );
  }
}
