import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sample/globals.dart';
import 'package:sample/owner/about.dart';
import 'package:sample/owner/enter.dart';
import 'package:sample/owner/exit.dart';
import 'package:sample/owner/notification.dart';
import 'package:sample/owner/personal_info.dart';
import 'package:sample/owner/support.dart';

class OwnerProfile extends StatefulWidget {
  const OwnerProfile({Key? key}) : super(key: key);

  @override
  State<OwnerProfile> createState() => _OwnerProfileState();
}

class _OwnerProfileState extends State<OwnerProfile> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: SizedBox(
                width: 300,
                height: 50,
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      gradient: const LinearGradient(
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                        colors: [
                          firstColor,
                          secondColor,
                        ],
                      )),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      alignment: Alignment.center,
                      // padding: const EdgeInsets.only(left: 20),
                      onPrimary: Colors.lightBlue,
                      elevation: 4,
                      primary: thirdColor,
                    ),
                    onPressed: () {
                      Get.to(const OwnerPersonalInfo());
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Icon(
                          Icons.arrow_back_ios,
                          color: Colors.black87,
                          size: 17,
                        ),
                        Text(
                          'اطلاعات شخصی',
                          style: TextStyle(
                            color: Colors.black87,
                            fontFamily: 'IranYekan',
                            fontSize: 17,
                          ),
                        ),
                        Icon(
                          Icons.person,
                          color: Colors.black87,
                          size: 19,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            Center(
              child: SizedBox(
                width: 300,
                height: 50,
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      gradient: const LinearGradient(
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                        colors: [
                          firstColor,
                          secondColor,
                        ],
                      )),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      alignment: Alignment.center,
                      // padding: const EdgeInsets.only(left: 20),
                      onPrimary: Colors.lightBlue,
                      elevation: 4,
                      primary: thirdColor,
                    ),
                    onPressed: () {
                      Get.to(const OwnerNotification());
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Icon(
                          Icons.arrow_back_ios,
                          color: Colors.black87,
                          size: 17,
                        ),
                        Text(
                          'اعلان ها',
                          style: TextStyle(
                            color: Colors.black87,
                            fontFamily: 'IranYekan',
                            fontSize: 17,
                          ),
                        ),
                        Icon(
                          Icons.notifications,
                          color: Colors.black87,
                          size: 19,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            Center(
              child: SizedBox(
                width: 300,
                height: 50,
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      gradient: const LinearGradient(
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                        colors: [
                          firstColor,
                          secondColor,
                        ],
                      )),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      alignment: Alignment.center,
                      // padding: const EdgeInsets.only(left: 20),
                      onPrimary: Colors.lightBlue,
                      elevation: 4,
                      primary: thirdColor,
                    ),
                    onPressed: () {
                      Get.to(const OwnerAbout());
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Icon(
                          Icons.arrow_back_ios,
                          color: Colors.black87,
                          size: 17,
                        ),
                        Text(
                          'درباره ما',
                          style: TextStyle(
                            color: Colors.black87,
                            fontFamily: 'IranYekan',
                            fontSize: 17,
                          ),
                        ),
                        Icon(
                          Icons.announcement,
                          color: Colors.black87,
                          size: 19,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            Center(
              child: SizedBox(
                width: 300,
                height: 50,
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      gradient: const LinearGradient(
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                        colors: [
                          firstColor,
                          secondColor,
                        ],
                      )),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      alignment: Alignment.center,
                      // padding: const EdgeInsets.only(left: 20),
                      onPrimary: Colors.lightBlue,
                      elevation: 4,
                      primary: thirdColor,
                    ),
                    onPressed: () {
                      Get.to(const OwnerSupport());
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Icon(
                          Icons.arrow_back_ios,
                          color: Colors.black87,
                          size: 17,
                        ),
                        Text(
                          'پشتیبانی',
                          style: TextStyle(
                            color: Colors.black87,
                            fontFamily: 'IranYekan',
                            fontSize: 17,
                          ),
                        ),
                        Icon(
                          Icons.support_agent,
                          color: Colors.black87,
                          size: 19,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            Center(
              child: SizedBox(
                width: 300,
                height: 50,
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      gradient: const LinearGradient(
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                        colors: [
                          firstColor,
                          secondColor,
                        ],
                      )),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      alignment: Alignment.center,
                      // padding: const EdgeInsets.only(left: 20),
                      onPrimary: Colors.lightBlue,
                      elevation: 4,
                      primary: thirdColor,
                    ),
                    onPressed: () {
                      Get.to(const OwnerExit());
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Icon(
                          Icons.arrow_back_ios,
                          color: Colors.black87,
                          size: 17,
                        ),
                        Text(
                          'خروج از حساب',
                          style: TextStyle(
                            color: Colors.black87,
                            fontFamily: 'IranYekan',
                            fontSize: 17,
                          ),
                        ),
                        Icon(
                          Icons.exit_to_app,
                          color: Colors.black87,
                          size: 19,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 25,
            ),
          ],
        ),
      ),
    );
  }
}
