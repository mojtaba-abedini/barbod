import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:sample/globals.dart';
import 'package:flutter/foundation.dart' show kIsWeb;


import 'package:sample/owner/owner_main.dart';

class OwnerInfo extends StatefulWidget {
  const OwnerInfo({Key? key}) : super(key: key);

  @override
  State<OwnerInfo> createState() => _OwnerInfoState();
}

class _OwnerInfoState extends State<OwnerInfo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80,
        title: const Text('ورود به سامانه'),
        centerTitle: true,
        backgroundColor: Theme.of(context).primaryColor,

      ),
      body: Center(
        child: SingleChildScrollView(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
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
                        'نام و نام خانوادگی',
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

                          elevation: 5,
                          borderRadius: BorderRadius.circular(5),
                          child: TextField(
                            autofocus: true,
                            cursorColor: Colors.grey,
                            textAlign: TextAlign.right,
                            style: const TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                            decoration: InputDecoration(
                              contentPadding: kIsWeb ? const EdgeInsets.all(17) : const EdgeInsets.all(13),
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
                    const Align(
                      alignment: Alignment.centerRight,
                      child: Text(
                        'کد ملی',
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
                          elevation: 5,
                          borderRadius: BorderRadius.circular(5),
                          child: TextField(
                            autofocus: true,
                            cursorColor: Colors.grey,
                            textAlign: TextAlign.right,
                            style: const TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                            decoration: InputDecoration(
                              contentPadding: kIsWeb ? const EdgeInsets.all(17) : const EdgeInsets.all(13),
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
                            keyboardType: TextInputType.number,
                            inputFormatters: <TextInputFormatter>[
                              FilteringTextInputFormatter.digitsOnly,
                              LengthLimitingTextInputFormatter(10),
                            ], //

                            // Only numbers can be entered
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 60,
                    ),
                    Center(
                      child: SizedBox(
                        width: 200,
                        height: 50,
                        child:  ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              alignment: Alignment.center,
                              onPrimary: Colors.lightBlueAccent,
                              elevation: 5,
                              primary: Theme.of(context).primaryColor,
                            ),
                            onPressed: () {
                              Get.to(const OwnerMain());
                            },
                            child: const Text(
                              'ذخیره اطلاعات',
                              style: TextStyle(
                                color: Colors.white,
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
          ),
        ),
      ),
    );
  }
}
