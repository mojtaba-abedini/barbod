import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sample/owner/verify.dart';
import 'package:sample/globals.dart';
import 'package:sample/owner/widgets/my_elevated_button_icon.dart';

class OwnerEnter extends StatefulWidget {
  const OwnerEnter({Key? key}) : super(key: key);

  @override
  State<OwnerEnter> createState() => _OwnerEnterState();
}

class _OwnerEnterState extends State<OwnerEnter> {
  bool value = false;

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
        body: Center(
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
            const Text(
              'بهترین سامانه حمل و نقل ایران',
              style: TextStyle(fontSize: 18, color: Colors.white),
            ),
            const SizedBox(
              height: 80,
            ),
            SizedBox(
                width: 200,
                height: 60,
                child: MyElevatedButtonIcon(
                  text: 'ورود به سامانه',
                  onPress: () => Get.to(const OwnerVerify()),
                  icon: const Icon(
                    Icons.exit_to_app,
                    color: secondColor,
                  ),
                )),
            const SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'قوانین و مقررات باربد را می پذیرم',
                  style: TextStyle(color: Colors.white, fontSize: 17),
                ),
                Checkbox(
                  value: value,
                  onChanged: (value) {
                    setState(() {
                      this.value = value!;
                    });
                  },
                ),
              ],
            ),
          ],
        )),
      ),
    );
  }
}
