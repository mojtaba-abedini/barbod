import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sample/globals.dart';
import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sample/data.dart';
import 'package:sample/owner/destination_location.dart';
import 'package:sample/owner/origin_location.dart';
import 'package:sample/owner/step_two.dart';

class OwnerStepOne extends StatefulWidget {
  const OwnerStepOne({Key? key}) : super(key: key);

  @override
  State<OwnerStepOne> createState() => _OwnerStepOneState();
}

class _OwnerStepOneState extends State<OwnerStepOne> {
  final String assetName = 'assets/step-one.svg';

  String palceDropdownValue = cities[0];
  String palce2DropdownValue = cities[0];
  final TextEditingController _origin_location = TextEditingController();
  final TextEditingController _destination_location = TextEditingController();

  void refreshOriginLocation() {
    _origin_location.text = ownerOriginLocation;
  }

  void refreshDestinationLocation() {
    _destination_location.text = ownerDestinationLocation;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80,
        title: const Text('مکان بارگیری'),
        centerTitle: true,
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
            child: SizedBox(
              width: MediaQuery.of(context).size.width > 600
                  ? 500
                  : MediaQuery.of(context).size.width,
              height: 40,
              child: SvgPicture.asset(assetName),
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.only(right: 20, left: 20),
                child: Center(
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width < 600
                        ? MediaQuery.of(context).size.width
                        : 600,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        // const Align(
                        //   alignment: Alignment.centerRight,
                        //   child: Text(
                        //     'محل بارگیری',
                        //     style: TextStyle(color: Colors.black, fontSize: 17),
                        //   ),
                        // ),
                        // const SizedBox(
                        //   height: 10,
                        // ),
                        // Center(
                        //   child: Container(
                        //     margin: const EdgeInsets.only(top: 5),
                        //     padding: const EdgeInsets.symmetric(
                        //         vertical: 2, horizontal: 20),
                        //     decoration: BoxDecoration(
                        //         color: thirdColor,
                        //         border: Border.all(
                        //           color: Colors.grey,
                        //           width: 1,
                        //         ),
                        //         borderRadius: BorderRadius.circular(5)),
                        //     width: MediaQuery.of(context).size.width < 600
                        //         ? MediaQuery.of(context).size.width
                        //         : 600,
                        //     child: Directionality(
                        //       textDirection: TextDirection.rtl,
                        //       child: DropdownButton<String>(
                        //         icon: const Visibility(
                        //             visible: false,
                        //             child: Icon(Icons.arrow_downward)),
                        //         value: palceDropdownValue,
                        //         elevation: 16,
                        //         iconSize: 0,
                        //         style: const TextStyle(color: Colors.black),
                        //         onChanged: (String? newValue) {
                        //           setState(() {
                        //             palceDropdownValue = newValue!;
                        //           });
                        //         },
                        //         items: cities.map<DropdownMenuItem<String>>(
                        //             (String value) {
                        //           return DropdownMenuItem<String>(
                        //             alignment: Alignment.center,
                        //             value: value,
                        //             child: Text(
                        //               value,
                        //               style: const TextStyle(
                        //                   fontFamily: 'IranYekan',
                        //                   fontSize: 15),
                        //             ),
                        //           );
                        //         }).toList(),
                        //         underline: Container(),
                        //       ),
                        //     ),
                        //   ),
                        // ),
                        // const SizedBox(
                        //   height: 20,
                        // ),
                        const Align(
                          alignment: Alignment.centerRight,
                          child: Text(
                            'محل بارگیری',
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

                            child: Material(
                              elevation: 0,
                              borderRadius: BorderRadius.circular(5),
                              child: Stack(children: [
                                TextField(
                                  keyboardType: TextInputType.multiline,
                                  maxLines: null,
                                  controller: _origin_location,
                                  cursorColor: Colors.grey,
                                  textAlign: TextAlign.right,
                                  style: const TextStyle(
                                      fontSize: 16,
                                      ),
                                  decoration: InputDecoration(

                                    suffixIcon: IconButton(
                                        onPressed: () {
                                          Navigator.of(context)
                                              .push(
                                            MaterialPageRoute(
                                              builder: (context) =>
                                                  const OwnerOriginLocation(),
                                            ),
                                          )
                                              .then((_) {
                                            refreshOriginLocation();
                                          });
                                        },
                                        icon: const Icon(Icons.search),color: Theme.of(context).primaryColor,),
                                    contentPadding: kIsWeb
                                        ? const EdgeInsets.only(left: 15,top: 18,bottom: 18)
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
                              ]),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        const Align(
                          alignment: Alignment.centerRight,
                          child: Text(
                            'آدرس دقیق محل بارگیری',
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
                            'محل تخلیه بار',
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

                            child: Material(
                              elevation: 0,
                              borderRadius: BorderRadius.circular(5),
                              child: Stack(children: [
                                TextField(
                                  keyboardType: TextInputType.multiline,
                                  maxLines: null,
                                  controller: _destination_location,
                                  cursorColor: Colors.grey,
                                  textAlign: TextAlign.right,
                                  style: const TextStyle(
                                    fontSize: 16,
                                  ),
                                  decoration: InputDecoration(

                                    suffixIcon: IconButton(
                                        onPressed: () {
                                          Navigator.of(context)
                                              .push(
                                            MaterialPageRoute(
                                              builder: (context) =>
                                              const OwnerDestinationLocation(),
                                            ),
                                          )
                                              .then((_) {
                                            refreshDestinationLocation();
                                          });
                                        },
                                        icon: const Icon(Icons.search),color: Theme.of(context).primaryColor,),
                                    contentPadding: kIsWeb
                                        ? const EdgeInsets.only(left: 15,top: 18,bottom: 18)
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
                              ]),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),




                        const Align(
                          alignment: Alignment.centerRight,
                          child: Text(
                            'آدرس دقیق محل تخلیه بار',
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
                            'نام و نام خانوداگی تحویل گیرنده',
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
                            'شماره تلفن تحویل گیرنده',
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
                                Get.to(const OwnerStepTwo());
                              },
                              child: const Text(
                                'مرحله بعد',
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
