import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:sample/globals.dart';
import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sample/data.dart';
import 'package:sample/owner/success.dart';

class StepThree extends StatefulWidget {
  const StepThree({Key? key}) : super(key: key);

  @override
  State<StepThree> createState() => _StepThreeState();
}

class _StepThreeState extends State<StepThree> {
  final String assetName = 'assets/step-three.svg';

  bool value = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80,
        title: const Text('باز بینی قیمت'),
        centerTitle: true,
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 40),
            child: SizedBox(
              width: MediaQuery.of(context).size.width < 600
                  ? MediaQuery.of(context).size.width
                  : 600,
              height: 30,
              child: SvgPicture.asset(assetName),
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.only(right: 50, left: 50),
                child: Center(
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width < 600
                        ? MediaQuery.of(context).size.width
                        : 600,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Align(
                          alignment: Alignment.centerRight,
                          child: Text(
                            'بارنامه',
                            style: TextStyle(color: Colors.black, fontSize: 17),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Center(
                          child: SizedBox(
                            width: MediaQuery.of(context).size.width < 600
                                ? MediaQuery.of(context).size.width
                                : 600,
                            height: 50,
                            child: Material(
                              elevation: 0,
                              borderRadius: BorderRadius.circular(5),
                              child: TextField(
                                cursorColor: Colors.grey,
                                textAlign: TextAlign.right,
                                style: const TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.bold),
                                decoration: InputDecoration(
                                  contentPadding: kIsWeb
                                      ? const EdgeInsets.all(17)
                                      : const EdgeInsets.all(13),
                                  filled: true,
                                  fillColor: thirdColor,
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: const BorderSide(
                                        width: 0.9, color: Colors.grey),
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: const BorderSide(
                                        width: 0.9, color: Colors.blue),
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        const Align(
                          alignment: Alignment.centerRight,
                          child: Text(
                            'نحوه پرداخت',
                            style: TextStyle(color: Colors.black, fontSize: 17),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Center(
                          child: SizedBox(
                            width: MediaQuery.of(context).size.width < 600
                                ? MediaQuery.of(context).size.width
                                : 600,
                            height: 50,
                            child: Material(
                              elevation: 0,
                              borderRadius: BorderRadius.circular(5),
                              child: TextField(
                                cursorColor: Colors.grey,
                                textAlign: TextAlign.right,
                                style: const TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.bold),
                                decoration: InputDecoration(
                                  contentPadding: kIsWeb
                                      ? const EdgeInsets.all(17)
                                      : const EdgeInsets.all(13),
                                  filled: true,
                                  fillColor: thirdColor,
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: const BorderSide(
                                        width: 0.9, color: Colors.grey),
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: const BorderSide(
                                        width: 0.9, color: Colors.blue),
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        const Align(
                          alignment: Alignment.centerRight,
                          child: Text(
                            'نوع ارز',
                            style: TextStyle(color: Colors.black, fontSize: 17),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Center(
                          child: SizedBox(
                            width: MediaQuery.of(context).size.width < 600
                                ? MediaQuery.of(context).size.width
                                : 600,
                            height: 50,
                            child: Material(
                              elevation: 0,
                              borderRadius: BorderRadius.circular(5),
                              child: TextField(
                                cursorColor: Colors.grey,
                                textAlign: TextAlign.right,
                                style: const TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.bold),
                                decoration: InputDecoration(
                                  contentPadding: kIsWeb
                                      ? const EdgeInsets.all(17)
                                      : const EdgeInsets.all(13),
                                  filled: true,
                                  fillColor: thirdColor,
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: const BorderSide(
                                        width: 0.9, color: Colors.grey),
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: const BorderSide(
                                        width: 0.9, color: Colors.blue),
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        const Align(
                          alignment: Alignment.centerRight,
                          child: Text(
                            'بیمه',
                            style: TextStyle(color: Colors.black, fontSize: 17),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Center(
                          child: SizedBox(
                            width: MediaQuery.of(context).size.width < 600
                                ? MediaQuery.of(context).size.width
                                : 600,
                            height: 50,
                            child: Material(
                              elevation: 0,
                              borderRadius: BorderRadius.circular(5),
                              child: TextField(
                                cursorColor: Colors.grey,
                                textAlign: TextAlign.right,
                                style: const TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.bold),
                                decoration: InputDecoration(
                                  contentPadding: kIsWeb
                                      ? const EdgeInsets.all(17)
                                      : const EdgeInsets.all(13),
                                  filled: true,
                                  fillColor: thirdColor,
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: const BorderSide(
                                        width: 0.9, color: Colors.grey),
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: const BorderSide(
                                        width: 0.9, color: Colors.blue),
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        const Align(
                          alignment: Alignment.centerRight,
                          child: Text(
                            'قیمت صافی راننده',
                            style: TextStyle(color: Colors.black, fontSize: 17),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Center(
                          child: SizedBox(
                            width: MediaQuery.of(context).size.width < 600
                                ? MediaQuery.of(context).size.width
                                : 600,
                            height: 50,
                            child: Material(
                              elevation: 0,
                              borderRadius: BorderRadius.circular(5),
                              child: TextField(
                                cursorColor: Colors.grey,
                                textAlign: TextAlign.right,
                                style: const TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.bold),
                                decoration: InputDecoration(
                                  contentPadding: kIsWeb
                                      ? const EdgeInsets.all(17)
                                      : const EdgeInsets.all(13),
                                  filled: true,
                                  fillColor: thirdColor,
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: const BorderSide(
                                        width: 0.9, color: Colors.grey),
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: const BorderSide(
                                        width: 0.9, color: Colors.blue),
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 40,
                        ),
                        Column(
                          children: [
                            const Padding(
                              padding: EdgeInsets.symmetric(horizontal: 15),
                              child: Text(
                                  'این بار تنها تا 10 ساعت قبل از حرکت قابل لغو کردن می باشد',
                                  textAlign: TextAlign.right,
                                  style: TextStyle(fontSize: 16)),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                const Text(
                                  'می پذیرم',
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 17),
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
                        ),
                        const SizedBox(
                          height: 40,
                        ),
                        Center(
                          child: SizedBox(
                            width: 200,
                            height: 50,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                alignment: Alignment.center,
                                onPrimary: Colors.white,
                                elevation: 0,
                                primary: Theme.of(context).primaryColor,
                              ),
                              onPressed: () {
                                Get.to(const OwnerSuccess());
                              },
                              child: const Text(
                                'ثبت بار',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: 'IranYekan',
                                  fontSize: 15,
                                ),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 40,
                        ),
                      ],
                    ),
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
