import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:sample/owner/code.dart';
import 'package:sample/globals.dart';
import 'package:sample/owner/widgets/my_textfield_number.dart';

class OwnerVerify extends StatefulWidget {
  const OwnerVerify({Key? key}) : super(key: key);

  @override
  State<OwnerVerify> createState() => _OwnerVerifyState();
}

class _OwnerVerifyState extends State<OwnerVerify> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(
        begin: Alignment.bottomCenter,
        end: Alignment.topCenter,
        colors: [
          firstColor,
          secondColor,
        ],
      )),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Directionality(
          textDirection: TextDirection.rtl,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'باربد',
                style: TextStyle(
                    fontSize: 42,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 50,
              ),
              const Text(
                'تلفن همراه خود را وارد کنید',
                style: TextStyle(color: Colors.white, fontSize: 17),
              ),
              const SizedBox(
                height: 20,
              ),
              MyTextFieldNumber(digits: 11),
              const SizedBox(
                height: 30,
              ),
              Center(
                child: SizedBox(
                  width: 200,
                  height: 50,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        alignment: Alignment.center,
                        onPrimary: Colors.lightBlue,
                        elevation: 5,
                        primary: const Color(0xfff6f6f6),
                        textStyle:
                            const TextStyle(fontWeight: FontWeight.bold)),
                    onPressed: () {
                      Get.to(const OwnerCode());
                    },
                    child: const Text(
                      'دریافت کد تایید',
                      style: TextStyle(
                        color: secondColor,
                        fontFamily: 'IranYekan',
                        fontSize: 15,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
