import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:sample/globals.dart';
import 'package:sample/data.dart';



class OwnerPersonalInfo extends StatefulWidget {
  const OwnerPersonalInfo({Key? key}) : super(key: key);

  @override
  State<OwnerPersonalInfo> createState() => _OwnerPersonalInfoState();
}

class _OwnerPersonalInfoState extends State<OwnerPersonalInfo> {

  final TextEditingController name = TextEditingController();
  final TextEditingController nationalCode = TextEditingController();
  final TextEditingController mobile = TextEditingController();

  @override
  void initState() {
    super.initState();
    name.text = personalInfo['name'] as String;
    nationalCode.text = personalInfo['nationalCode'] as String;
    mobile.text = personalInfo['mobile'] as String;
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80,
        title: const Text('اطلاعات شخصی'),
        centerTitle: true,
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Center(
            child: Container(
              padding: const EdgeInsets.only(right: 30, left: 30),
              child: SizedBox(
                width: MediaQuery.of(context).size.width < 600
                    ? MediaQuery.of(context).size.width
                    : 600,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      padding: const EdgeInsets.only(right: 30, left: 30),
                      child: const Align(
                        alignment: Alignment.centerRight,
                        child: Text(
                          'نام و نام خانوادگی',
                          style: TextStyle(color: Colors.black, fontSize: 17),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Center(
                      child: Container(
                        padding: const EdgeInsets.only(right: 30, left: 30),
                        child: SizedBox(
                         width: MediaQuery.of(context).size.width < 600
                          ? MediaQuery.of(context).size.width
                          : 600,
                          height: 50,
                          child: Material(
                            elevation: 5,
                            borderRadius: BorderRadius.circular(5),
                            child: TextField(
                              readOnly: true,
                              controller: name,
                              autofocus: true,
                              textAlign: TextAlign.right,
                              style: const TextStyle(
                                  fontSize: 18, color: Colors.black54),
                              decoration: InputDecoration(
                                contentPadding: const EdgeInsets.all(15),
                                filled: true,
                                fillColor: Colors.white,
                                enabledBorder: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                      width: 0.5, color: Colors.grey),
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                      width: 0.5, color: Colors.grey),
                                  borderRadius: BorderRadius.circular(5),
                                ),
                              ),

                              // Only numbers can be entered
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Container(
                      padding: const EdgeInsets.only(right: 30, left: 30),
                      child: const Align(
                        alignment: Alignment.centerRight,
                        child: Text(
                          'کد ملی',
                          style: TextStyle(color: Colors.black, fontSize: 17),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Center(
                      child: Container(
                        padding: const EdgeInsets.only(right: 30, left: 30),
                        child: SizedBox(
                         width: MediaQuery.of(context).size.width < 600
                          ? MediaQuery.of(context).size.width
                          : 600,
                          height: 50,
                          child: Material(
                            elevation: 5,
                            borderRadius: BorderRadius.circular(5),
                            child: TextField(
                              controller: nationalCode,
                              readOnly: true,
                              autofocus: true,
                              textAlign: TextAlign.right,
                              style: const TextStyle(
                                  fontSize: 18, color: Colors.black54),
                              decoration: InputDecoration(
                                contentPadding: const EdgeInsets.all(17),
                                filled: true,
                                fillColor: Colors.white,
                                enabledBorder: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                      width: 0.5, color: Colors.grey),
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                      width: 0.5, color: Colors.grey),
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
                    ),

                    const SizedBox(
                      height: 20,
                    ),
                    Container(
                      padding: const EdgeInsets.only(right: 30, left: 30),
                      child: const Align(
                        alignment: Alignment.centerRight,
                        child: Text(
                          'تلفن همراه',
                          style: TextStyle(color: Colors.black, fontSize: 17),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Center(
                      child: Container(
                        padding: const EdgeInsets.only(right: 30, left: 30),
                        child: SizedBox(
                         width: MediaQuery.of(context).size.width < 600
                          ? MediaQuery.of(context).size.width
                          : 600,
                          height: 50,
                          child: Material(
                            elevation: 5,
                            borderRadius: BorderRadius.circular(5),
                            child: TextField(
                              controller: mobile,
                              readOnly: true,
                              autofocus: true,
                              textAlign: TextAlign.right,
                              style: const TextStyle(
                                  fontSize: 18, color: Colors.black54),
                              decoration: InputDecoration(
                                contentPadding: const EdgeInsets.all(17),
                                filled: true,
                                fillColor: Colors.white,
                                enabledBorder: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                      width: 0.5, color: Colors.grey),
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                      width: 0.5, color: Colors.grey),
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
                    ),



                    const SizedBox(
                      height: 60,
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
                              Navigator.pop(context);
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
