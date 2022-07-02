import 'package:flutter/material.dart';

import 'package:sample/globals.dart';
import 'package:sample/data.dart';

class OwnerExit extends StatefulWidget {
  const OwnerExit({Key? key}) : super(key: key);

  @override
  State<OwnerExit> createState() => _OwnerExitState();
}

class _OwnerExitState extends State<OwnerExit> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80,
        title: const Text('خروج از حساب'),
        centerTitle: true,
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body:  Center(
        child: SizedBox(
          width: 400,
          child: Column(


            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('آیا مایل به خروج از حساب کاربری هستید؟',style: TextStyle(fontSize: 17),),
              const SizedBox(height: 40,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 150,
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
                        'خیر',
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'IranYekan',
                          fontSize: 15,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 20,),
                  SizedBox(
                    width: 150,
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
                        'بله',
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'IranYekan',
                          fontSize: 15,
                        ),
                      ),
                    ),
                  ),


                ],
              ),
            ],
          ),
        ),
      )
    );
  }
}
