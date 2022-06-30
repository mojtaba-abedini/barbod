import 'package:flutter/material.dart';
import 'package:sample/globals.dart';

class MyElevatedButtonIcon extends StatelessWidget {
   MyElevatedButtonIcon({Key? key,required this.text,required this.onPress,required this.icon}) : super(key: key);

  String text;
   void Function() onPress;
   Icon icon;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      style: ElevatedButton.styleFrom(
          alignment: Alignment.center,
          // padding: const EdgeInsets.only(left: 20),
          onPrimary: Colors.lightBlue,
          elevation: 5,
          primary: thirdColor,
          textStyle: const TextStyle(fontWeight: FontWeight.bold)),
      onPressed:   onPress
      ,
      label:  Text(
        text,
        style: const TextStyle(
          color: secondColor,
          fontFamily: 'IranYekan',
          fontSize: 15,
        ),
      ),
      icon: icon,
    );
  }
}
