import 'package:flutter/material.dart';

import 'package:lottie/lottie.dart';
import 'package:sample/owner/orders.dart';
import 'package:sample/owner/profile.dart';
import 'package:get/get.dart';
import 'package:sample/owner/step_one.dart';

class OwnerSuccess extends StatefulWidget {
  const OwnerSuccess({Key? key}) : super(key: key);

  @override
  State<OwnerSuccess> createState() => _OwnerSuccessState();
}

class _OwnerSuccessState extends State<OwnerSuccess> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80,
        title: const Text('باربد'),
        centerTitle: true,
        backgroundColor: Theme.of(context).primaryColor,
      ),

      body: Center(
        child: SingleChildScrollView(
          child: Center(
            child: SizedBox(
              width: MediaQuery.of(context).size.width < 600
                  ? MediaQuery.of(context).size.width * 0.75
                  : 400,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Align(
                    alignment: Alignment.center,
                    child: Text(
                      'بار شما با موفقیت ثبت شد',
                      style: TextStyle(color: Colors.black, fontSize: 17),
                    ),
                  ),
                  SizedBox(
                    child: Lottie.asset('assets/new_order.json'),
                    // child: Lottie.asset('assets/cargo.json'),
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
                          onPrimary: Colors.lightBlueAccent,
                          elevation: 0,
                          primary: Theme.of(context).primaryColor,
                        ),
                        onPressed: () {
                          Get.to(const OwnerOrders());
                        },
                        child: const Text(
                          'مشاهده بار ثبت شده',
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
    );
  }
}
