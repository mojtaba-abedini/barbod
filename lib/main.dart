
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sample/owner/enter.dart';
import 'package:url_strategy/url_strategy.dart';

void main() {
  setPathUrlStrategy();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: 'IranYekan',
        primarySwatch: Colors.blue,
      ),
      home: const OwnerEnter(),
    );
  }
}



















