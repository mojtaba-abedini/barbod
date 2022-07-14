import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sample/globals.dart';

import '../data.dart';

class OwnerOrders extends StatefulWidget {
  const OwnerOrders({Key? key}) : super(key: key);

  @override
  State<OwnerOrders> createState() => _OwnerOrdersState();
}

class _OwnerOrdersState extends State<OwnerOrders> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 3,
        child: Directionality(
          textDirection: TextDirection.rtl,
          child: Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.blue,

              toolbarHeight: 11,
              bottom: const TabBar(
                indicatorColor: Colors.white,
                labelColor: Colors.white,
                unselectedLabelColor: Colors.white,
                labelStyle: TextStyle(
                    fontSize: 17.0,
                   fontFamily: 'IranYekan',
                    fontWeight: FontWeight.bold),
                unselectedLabelStyle:
                    TextStyle(fontSize: 15.0,fontFamily: 'IranYekan'),
                tabs: [
                  Tab(
                    text: 'در انتظار',
                  ),
                  Tab(
                    text: 'حمل شده',
                  ),
                  Tab(
                    text: 'لغو شده',
                  ),
                ],
              ),
            ),
            body: Center(
              child: SizedBox(
                width: MediaQuery.of(context).size.width < 800 ? MediaQuery.of(context).size.width  : 800,
                child: TabBarView(
                  children: [
                    Expanded(
                      child: ListView.builder(
                        padding: const EdgeInsets.all(20),
                        itemCount: ordersWaiting.length,
                        itemBuilder: (BuildContext context, int index) {
                          return Container(
                            margin: const EdgeInsets.only(top: 10, bottom: 10),
                            color: thirdColor,
                            child: Container(
                              padding: const EdgeInsets.only(right: 30,left: 30,top: 20,bottom: 20),
                              decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.3),
                                    spreadRadius: 0.3,
                                    blurRadius: 7,
                                    offset: const Offset(
                                        0, 5), // changes position of shadow
                                  ),
                                ],
                                borderRadius: BorderRadius.circular(5),
                                color: thirdColor,
                              ),
                              child: Column(
                                children: [
                                  const SizedBox(
                                    height: 15,
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Expanded(
                                        child: Container(
                                          padding: const EdgeInsets.all(8),
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(5),
                                            color: Colors.black12,
                                          ),
                                          child: Text(
                                            '${ordersWaiting[index]['date']}',
                                            textAlign: TextAlign.center,
                                            style: const TextStyle(
                                               fontFamily: 'IranYekan',fontSize: 16),
                                          ),
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 15,
                                      ),
                                      Expanded(
                                        child: Container(
                                            padding: const EdgeInsets.all(8),
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(5),
                                              color: Colors.black12,
                                            ),
                                            child: Text(
                                                '${ordersWaiting[index]['description']}',
                                                textAlign: TextAlign.center,
                                                style: const TextStyle(
                                                   fontFamily: 'IranYekan',fontSize: 16))),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      Expanded(
                                        child: Container(
                                          padding: const EdgeInsets.all(8),
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(5),
                                          ),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              const Icon(
                                                Icons.location_on_rounded,
                                                color: Colors.blue,
                                                size: 16,
                                              ),
                                              Text(
                                                'از ${ordersWaiting[index]['from']}',
                                                style: const TextStyle(
                                                   fontFamily: 'IranYekan',fontSize: 16),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 10,
                                      ),
                                      Expanded(
                                        child: Container(
                                            padding: const EdgeInsets.all(8),
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(5),
                                            ),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                const Icon(
                                                  Icons.location_on_rounded,
                                                  color: Colors.blue,
                                                  size: 16,
                                                ),
                                                Text(
                                                    'به ${ordersWaiting[index]['to']}',
                                                    style: const TextStyle(
                                                        fontFamily:
                                                            'IranYekan',fontSize: 16)),
                                              ],
                                            )),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Expanded(
                                        child: Container(
                                          padding: const EdgeInsets.all(8),
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(5),
                                            color: Colors.black12,
                                          ),
                                          child: Text(
                                            '${ordersWaiting[index]['price']}',
                                            textAlign: TextAlign.center,
                                            style: const TextStyle(
                                               fontFamily: 'IranYekan',fontSize: 16),
                                          ),
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 15,
                                      ),
                                      Expanded(
                                        child: Container(
                                            padding: const EdgeInsets.all(8),
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(5),
                                              color: Colors.black12,
                                            ),
                                            child: Text(
                                                '${ordersWaiting[index]['priceType']}',
                                                textAlign: TextAlign.center,
                                                style: const TextStyle(
                                                   fontFamily: 'IranYekan',fontSize: 16))),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 25,
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Expanded(
                                        child: Container(
                                          height:35,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(5),
                                          ),
                                          child: ElevatedButton(
                                            style: ElevatedButton.styleFrom(
                                              alignment: Alignment.center,
                                              onPrimary: Colors.white,
                                              elevation: 0,
                                              primary: Theme.of(context)
                                                  .primaryColor,
                                            ),
                                            onPressed: () {
                                              // Navigator.pop(context);
                                            },
                                            child: const Text(
                                              'ویرایش',
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
                                        width: 10,
                                      ),
                                      Expanded(
                                        child: Container(
                                          height:35,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(5),
                                          ),
                                          child: ElevatedButton(
                                            style: ElevatedButton.styleFrom(
                                              alignment: Alignment.center,
                                              onPrimary: Colors.white,
                                              elevation: 0,
                                              primary: Colors.red,
                                            ),
                                            onPressed: () {
                                              // Navigator.pop(context);
                                            },
                                            child: const Text(
                                              'لغو سفارش',
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
                                  const SizedBox(
                                    height: 15,
                                  ),
                                ],
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                    Expanded(
                      child: ListView.builder(
                        padding: const EdgeInsets.all(20),
                        itemCount: ordersWaiting.length,
                        itemBuilder: (BuildContext context, int index) {
                          return Container(
                            margin: const EdgeInsets.only(top: 10, bottom: 10),
                            color: thirdColor,
                            child: Container(
                              padding: const EdgeInsets.only(right: 30,left: 30,top: 20,bottom: 20),
                              decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.3),
                                    spreadRadius: 0.3,
                                    blurRadius: 7,
                                    offset: const Offset(
                                        0, 5), // changes position of shadow
                                  ),
                                ],
                                borderRadius: BorderRadius.circular(5),
                                color: thirdColor,
                              ),
                              child: Column(
                                children: [
                                  const SizedBox(
                                    height: 15,
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Expanded(
                                        child: Container(
                                          padding: const EdgeInsets.all(8),
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(5),
                                            color: Colors.black12,
                                          ),
                                          child: Text(
                                            '${ordersWaiting[index]['date']}',
                                            textAlign: TextAlign.center,
                                            style: const TextStyle(
                                               fontFamily: 'IranYekan',fontSize: 16),
                                          ),
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 15,
                                      ),
                                      Expanded(
                                        child: Container(
                                            padding: const EdgeInsets.all(8),
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(5),
                                              color: Colors.black12,
                                            ),
                                            child: Text(
                                                '${ordersWaiting[index]['description']}',
                                                textAlign: TextAlign.center,
                                                style: const TextStyle(
                                                   fontFamily: 'IranYekan',fontSize: 16))),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      Expanded(
                                        child: Container(
                                          padding: const EdgeInsets.all(8),
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(5),
                                          ),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              const Icon(
                                                Icons.location_on_rounded,
                                                color: Colors.blue,
                                                size: 16,
                                              ),
                                              Text(
                                                'از ${ordersWaiting[index]['from']}',
                                                style: const TextStyle(
                                                   fontFamily: 'IranYekan',fontSize: 16),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 10,
                                      ),
                                      Expanded(
                                        child: Container(
                                            padding: const EdgeInsets.all(8),
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(5),
                                            ),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                const Icon(
                                                  Icons.location_on_rounded,
                                                  color: Colors.blue,
                                                  size: 16,
                                                ),
                                                Text(
                                                    'به ${ordersWaiting[index]['to']}',
                                                    style: const TextStyle(
                                                        fontFamily:
                                                            'IranYekan')),
                                              ],
                                            )),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Expanded(
                                        child: Container(
                                          padding: const EdgeInsets.all(8),
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(5),
                                            color: Colors.black12,
                                          ),
                                          child: Text(
                                            '${ordersWaiting[index]['price']}',
                                            textAlign: TextAlign.center,
                                            style: const TextStyle(
                                               fontFamily: 'IranYekan',fontSize: 16),
                                          ),
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 15,
                                      ),
                                      Expanded(
                                        child: Container(
                                            padding: const EdgeInsets.all(8),
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(5),
                                              color: Colors.black12,
                                            ),
                                            child: Text(
                                                '${ordersWaiting[index]['priceType']}',
                                                textAlign: TextAlign.center,
                                                style: const TextStyle(
                                                   fontFamily: 'IranYekan',fontSize: 16))),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 15,
                                  ),
                                ],
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                    Expanded(
                      child: ListView.builder(
                        padding: const EdgeInsets.all(20),
                        itemCount: ordersWaiting.length,
                        itemBuilder: (BuildContext context, int index) {
                          return Container(
                            margin: const EdgeInsets.only(top: 10, bottom: 10),
                            color: thirdColor,
                            child: Container(
                              padding: const EdgeInsets.only(right: 30,left: 30,top: 20,bottom: 20),
                              decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.3),
                                    spreadRadius: 0.3,
                                    blurRadius: 7,
                                    offset: const Offset(
                                        0, 5), // changes position of shadow
                                  ),
                                ],
                                borderRadius: BorderRadius.circular(5),
                                color: thirdColor,
                              ),
                              child: Column(
                                children: [
                                  const SizedBox(
                                    height: 15,
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Expanded(

                                        child: Container(
                                          padding: const EdgeInsets.all(8),
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(5),
                                            color: Colors.black12,
                                          ),
                                          child: Text(
                                            '${ordersWaiting[index]['date']}',
                                            textAlign: TextAlign.center,
                                            style: const TextStyle(
                                               fontFamily: 'IranYekan',fontSize: 16),
                                          ),
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 15,
                                      ),
                                      Expanded(
                                        child: Container(
                                            padding: const EdgeInsets.all(8),
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(5),
                                              color: Colors.black12,
                                            ),
                                            child: Text(
                                                '${ordersWaiting[index]['description']}',
                                                textAlign: TextAlign.center,
                                                style: const TextStyle(
                                                   fontFamily: 'IranYekan',fontSize: 16))),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      Expanded(
                                        child: Container(
                                          padding: const EdgeInsets.all(8),
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(5),
                                          ),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              const Icon(
                                                Icons.location_on_rounded,
                                                color: Colors.blue,
                                                size: 16,
                                              ),
                                              Text(
                                                'از ${ordersWaiting[index]['from']}',
                                                style: const TextStyle(
                                                   fontFamily: 'IranYekan',fontSize: 16),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 10,
                                      ),
                                      Expanded(
                                        child: Container(
                                            padding: const EdgeInsets.all(8),
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(5),
                                            ),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                const Icon(
                                                  Icons.location_on_rounded,
                                                  color: Colors.blue,
                                                  size: 16,
                                                ),
                                                Text(
                                                    'به ${ordersWaiting[index]['to']}',
                                                    style: const TextStyle(
                                                        fontFamily:
                                                            'IranYekan')),
                                              ],
                                            )),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Expanded(
                                        child: Container(
                                          padding: const EdgeInsets.all(8),
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(5),
                                            color: Colors.black12,
                                          ),
                                          child: Text(
                                            '${ordersWaiting[index]['price']}',
                                            textAlign: TextAlign.center,
                                            style: const TextStyle(
                                               fontFamily: 'IranYekan',fontSize: 16),
                                          ),
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 15,
                                      ),
                                      Expanded(
                                        child: Container(
                                            padding: const EdgeInsets.all(8),
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(5),
                                              color: Colors.black12,
                                            ),
                                            child: Text(
                                                '${ordersWaiting[index]['priceType']}',
                                                textAlign: TextAlign.center,
                                                style: const TextStyle(
                                                   fontFamily: 'IranYekan',fontSize: 16))),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 25,
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Expanded(
                                        child: Container(
                                          height:35,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(5),
                                          ),
                                          child: ElevatedButton(
                                            style: ElevatedButton.styleFrom(
                                              alignment: Alignment.center,
                                              onPrimary: Colors.white,
                                              elevation: 0,
                                              primary: Theme.of(context)
                                                  .primaryColor,
                                            ),
                                            onPressed: () {
                                              // Navigator.pop(context);
                                            },
                                            child: const Text(
                                              'بازگشت به چرخه',
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
                                  const SizedBox(
                                    height: 15,
                                  ),
                                ],
                              ),
                            ),
                          );
                        },
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
