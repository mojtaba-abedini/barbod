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
  String address = '';
  late List<String> myAddress;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: OpenStreetMapSearchAndPick(
          center: ownerDestinationLocation == 0 ? LatLong(35.7018808, 51.3377326) : LatLong(ownerOriginLat,ownerOriginLong),
          onPicked: (pickedData) {
            setState(() {
              address = pickedData.address;

            });

            myAddress= address.split(',');
            print("myAddress : ${myAddress[0]}");


            ownerDestinationLocation=("${myAddress[0]}،${myAddress[1]}،${myAddress[2]}،${myAddress[3]}،${myAddress[4]}");





            ownerDestinationLat = pickedData.latLong.latitude;
            ownerDestinationLong = pickedData.latLong.longitude;



            // print(pickedData.latLong.latitude);
            // print(pickedData.latLong.longitude);
            // print(pickedData.address);
          }),
    );
  }
}
