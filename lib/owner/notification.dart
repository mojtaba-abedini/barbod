import 'package:flutter/material.dart';

import 'package:sample/globals.dart';
import 'package:sample/data.dart';

class OwnerNotification extends StatefulWidget {
  const OwnerNotification({Key? key}) : super(key: key);

  @override
  State<OwnerNotification> createState() => _OwnerNotificationState();
}

class _OwnerNotificationState extends State<OwnerNotification> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80,
        title: const Text('اعلان ها'),
        centerTitle: true,
       backgroundColor: Theme.of(context).primaryColor,
      ),
      body: Center(
        child: SizedBox(
          width: 350,
          // child: Text('${notification[0]['title']}')),
          child: Column(
            children: [
              Expanded(
                child: ListView.builder(
                  padding: const EdgeInsets.all(20),
                  itemCount: notification.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      margin: const EdgeInsets.only(top: 10, bottom: 10),
                      height: 50,
                      color: thirdColor,
                      child: Container(
                          padding: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.3),
                                  spreadRadius: 0.3,
                                  blurRadius: 7,
                                  offset:
                                  Offset(0, 5), // changes position of shadow
                                ),
                              ],
                              borderRadius: BorderRadius.circular(5),
                              color: thirdColor,
                              border: Border.all(color: Colors.grey)),
                          child: Text(
                            '${notification[index]['title']}',
                            textAlign: TextAlign.right,
                            style: const TextStyle(fontSize: 16),
                          )),
                    );
                  },
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
              const SizedBox(
                height: 40,
              ),


            ],
          )
        ),
      ),
    );
  }
}
