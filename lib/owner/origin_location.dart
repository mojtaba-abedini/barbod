import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sample/globals.dart';
import 'step_one.dart';


import 'package:sample/open_street_map.dart';

class OwnerOriginLocation extends StatefulWidget {
  const OwnerOriginLocation({Key? key}) : super(key: key);

  @override
  State<OwnerOriginLocation> createState() => _OwnerOriginLocationState();
}

class _OwnerOriginLocationState extends State<OwnerOriginLocation> {
  String address = '';
  late List<String> myAddress;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: OpenStreetMapSearchAndPick(
          center: ownerOriginLat == 0 ? LatLong(35.7018808, 51.3377326) : LatLong(ownerOriginLat,ownerOriginLong),
          onPicked: (pickedData) {
            setState(() {
              address = pickedData.address;

            });

            myAddress= address.split(',');
            print("myAddress : ${myAddress[0]}");


            ownerOriginLocation=("${myAddress[0]}،${myAddress[1]}،${myAddress[2]}،${myAddress[3]}،${myAddress[4]}");



            // ownerOriginLocation = pickedData.address;
            ownerOriginLat = pickedData.latLong.latitude;
            ownerOriginLong = pickedData.latLong.longitude;



            // print(pickedData.latLong.latitude);
            // print(pickedData.latLong.longitude);
            // print(pickedData.address);
          }),
    );
  }
}
