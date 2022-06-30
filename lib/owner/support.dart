import 'package:flutter/material.dart';

import 'package:sample/globals.dart';
import 'package:sample/data.dart';

class OwnerSupport extends StatefulWidget {
  const OwnerSupport({Key? key}) : super(key: key);

  @override
  State<OwnerSupport> createState() => _OwnerSupportState();
}

class _OwnerSupportState extends State<OwnerSupport> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80,
        title: const Text('پشتیبانی'),
        centerTitle: true,
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: const Center(
        child: Text('صفحه پشتیبانی',style: TextStyle(fontSize: 17),),
      )
    );
  }
}
