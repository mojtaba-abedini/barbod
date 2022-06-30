import 'dart:async';
import 'package:sample/globals.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:sample/owner/info.dart';
import 'package:sample/owner/verify.dart';
import 'package:flutter/foundation.dart' show kIsWeb;

class OwnerCode extends StatefulWidget {
  const OwnerCode({Key? key}) : super(key: key);

  @override
  State<OwnerCode> createState() => _OwnerCodeState();
}

class _OwnerCodeState extends State<OwnerCode> {


  late FocusNode myFocusTextField1;
  late FocusNode myFocusTextField2;
  late FocusNode myFocusTextField3;

  late Timer _timer;
  int _start = 59;

  void startTimer() {
    const oneSec = Duration(seconds: 1);
    _timer = Timer.periodic(
      oneSec,
      (Timer timer) {
        if (_start == 0) {
          setState(() {
            timer.cancel();
          });
        } else {
          setState(() {
            _start--;
          });
        }
      },
    );
  }

  @override
  void dispose() {
    _timer.cancel();
    myFocusTextField1.dispose();
    myFocusTextField2.dispose();
    myFocusTextField3.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    myFocusTextField1 = FocusNode();
    myFocusTextField2 = FocusNode();
    myFocusTextField3 = FocusNode();
    startTimer();
  }

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
        body: Column(
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
              height: 30,
            ),
            const Text(
              'کد وارد شده به تلفن همراه خود را وارد کنید',
              style: TextStyle(color: Colors.white, fontSize: 17),
            ),
            const SizedBox(
              height: 20,
            ),
            Center(
              child: SizedBox(
                width: 280,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: 50,
                      height: 50,
                      child: Material(
                        elevation: 10,
                        borderRadius: BorderRadius.circular(5),
                        child: TextField(
                          cursorColor: Colors.grey,
                          textAlign: TextAlign.center,
                          autofocus: true,
                          onChanged: (text) => myFocusTextField1.requestFocus(),

                          style: const TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                          decoration: InputDecoration(
                            contentPadding: kIsWeb ? const EdgeInsets.all(15) : const EdgeInsets.all(13),
                            filled: true,
                            fillColor: thirdColor,
                            enabledBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                  width: 1, color: Colors.white),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                  width: 1, color: Colors.white),
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),

                          keyboardType: TextInputType.number,
                          inputFormatters: <TextInputFormatter>[
                            FilteringTextInputFormatter.digitsOnly,
                            LengthLimitingTextInputFormatter(1),
                          ], // Only numbers can be entered
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 50,
                      height: 50,
                      child: Material(
                        elevation: 10,
                        borderRadius: BorderRadius.circular(5),
                        child: TextField(
                          cursorColor: Colors.grey,
                         
                          textAlign: TextAlign.center,
                          focusNode: myFocusTextField1,
                          onChanged: (text) => myFocusTextField2.requestFocus(),

                          style: const TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                          decoration: InputDecoration(
                            contentPadding: kIsWeb ? const EdgeInsets.all(15) : const EdgeInsets.all(13),
                            filled: true,
                            fillColor: thirdColor,
                            enabledBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                  width: 1, color: Colors.white),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                  width: 1, color: Colors.white),
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),

                          keyboardType: TextInputType.number,
                          inputFormatters: <TextInputFormatter>[
                            FilteringTextInputFormatter.digitsOnly,
                            LengthLimitingTextInputFormatter(1),
                          ], // Only numbers can be entered
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 50,
                      height: 50,
                      child: Material(
                        elevation: 10,
                        borderRadius: BorderRadius.circular(5),
                        child: TextField(
                          cursorColor: Colors.grey,
                          textAlign: TextAlign.center,
                          focusNode: myFocusTextField2,
                          onChanged: (text) => myFocusTextField3.requestFocus(),
                          style: const TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                          decoration: InputDecoration(
                            contentPadding: kIsWeb ? const EdgeInsets.all(15) : const EdgeInsets.all(13),
                            filled: true,
                            fillColor: thirdColor,
                            enabledBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                  width: 1, color: Colors.white),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                  width: 1, color: Colors.white),
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),

                          keyboardType: TextInputType.number,
                          inputFormatters: <TextInputFormatter>[
                            FilteringTextInputFormatter.digitsOnly,
                            LengthLimitingTextInputFormatter(1),
                          ], // Only numbers can be entered
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 50,
                      height: 50,
                      child: Material(
                        elevation: 10,
                        borderRadius: BorderRadius.circular(5),
                        child: TextField(
                          cursorColor: Colors.grey,
                          textAlign: TextAlign.center,
                          focusNode: myFocusTextField3,
                          // onChanged: (text) =>
                          //     FocusScope.of(context).nextFocus(),
                          style: const TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                          decoration: InputDecoration(
                            contentPadding: kIsWeb ? const EdgeInsets.all(15) : const EdgeInsets.all(13),
                            filled: true,
                            fillColor: thirdColor,
                            enabledBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                  width: 1, color: Colors.white),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                  width: 1, color: Colors.white),
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),

                          keyboardType: TextInputType.number,
                          inputFormatters: <TextInputFormatter>[
                            FilteringTextInputFormatter.digitsOnly,
                            LengthLimitingTextInputFormatter(1),
                          ], // Only numbers can be entered
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Center(
              child: _start > 0
                  ? Text(
                      "00:$_start",
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                      ),
                    )
                  : TextButton(
                      onPressed: () {},
                      child: const Text(
                        "ارسال مجدد کد",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                        ),
                      ),
                    ),
            ),
            // const SizedBox(
            //   height: 10,
            // ),
            Center(
              child: TextButton(
                onPressed: () {
                  Get.to(const OwnerVerify());
                },
                child: const Text(
                  "ویرایش تلفن همراه",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
              ),
            ),
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
                      textStyle: const TextStyle(fontWeight: FontWeight.bold)),
                  onPressed: () {
                    Get.to(const OwnerInfo());
                  },
                  child: const Text(
                    'ورود به برنامه',
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
    );
  }
}
