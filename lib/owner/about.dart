import 'package:flutter/material.dart';

import 'package:sample/globals.dart';
import 'package:sample/data.dart';

class OwnerAbout extends StatefulWidget {
  const OwnerAbout({Key? key}) : super(key: key);

  @override
  State<OwnerAbout> createState() => _OwnerAboutState();
}

class _OwnerAboutState extends State<OwnerAbout> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80,
        title: const Text('درباره ما'),
        centerTitle: true,
       backgroundColor: Theme.of(context).primaryColor,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [ SizedBox(
          width: MediaQuery.of(context).size.width * 0.8,
          child: Directionality(
            textDirection: TextDirection.rtl,
            child: Container(
              margin: const EdgeInsets.only(top: 10, bottom: 10),
              color: thirdColor,
              child: Container(
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.3),
                          spreadRadius: 0.3,
                          blurRadius: 7,
                          offset: const Offset(0, 5), // changes position of shadow
                        ),
                      ],
                      borderRadius: BorderRadius.circular(5),
                      color: thirdColor,
                      border: Border.all(color: Colors.grey)),
                  child: const Text(
                    'شرکت باربد در جهت اصلاح ، تسهیل و تسریع فرآیند حمل بارف سامانه هوشمندی برای ارتباط مستقیم صاحبان بار و شرکت های باربری با راننده ها را فراهم کرده است. ',
                    textAlign: TextAlign.justify,
                    style: TextStyle(fontSize: 16),
                  )),
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
                  'بازگشت',
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
      )
    );
  }
}
