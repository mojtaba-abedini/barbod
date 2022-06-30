import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../globals.dart';


class MyTextFieldNumber extends StatelessWidget {
  MyTextFieldNumber({Key? key, required this.digits}) : super(key: key);
  int digits;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: 300,
        height: 50,
        child: Material(
          elevation: 10,
          borderRadius: BorderRadius.circular(5),
          child: TextField(
            cursorColor: Colors.grey,
            autofocus: true,
            textAlign: TextAlign.center,
            style: const TextStyle(

                fontSize: 18, fontWeight: FontWeight.bold),
            decoration: InputDecoration(
              contentPadding: const EdgeInsets.all(17),
              filled: true,
              fillColor: thirdColor,
              enabledBorder: OutlineInputBorder(
                borderSide:
                const BorderSide(width: 1, color: Colors.white),
                borderRadius: BorderRadius.circular(10),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide:
                const BorderSide(width: 1, color: Colors.white),
                borderRadius: BorderRadius.circular(10),
              ),
            ),

              keyboardType : TextInputType.number,
            inputFormatters: <TextInputFormatter>[
              FilteringTextInputFormatter.digitsOnly,
              LengthLimitingTextInputFormatter(digits),
            ], // Only numbers can be entered
          ),
        ),
      ),
    );
  }
}
