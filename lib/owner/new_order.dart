import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:sample/owner/orders.dart';
import 'package:sample/owner/profile.dart';
import 'package:sample/globals.dart';

class OwnerNewOrder extends StatefulWidget {
  const OwnerNewOrder({Key? key}) : super(key: key);

  @override
  State<OwnerNewOrder> createState() => _OwnerNewOrderState();
}

class _OwnerNewOrderState extends State<OwnerNewOrder> {
  late List<Widget> _pages;
  late Widget _page1;
  late Widget _page2;
  late Widget _page3;
  late int _currentIndex;
  late Widget _currentPage = const OwnerNewOrder();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _page1 = const OwnerNewOrder();
    _page2 = const OwnerOrders();
    _page3 = const OwnerProfile();
    _pages = [_page1, _page2, _page3];
    _currentIndex = 0;
    _currentPage = _page1;
  }

  void _changeTab(int index) {
    setState(() {
      _currentIndex = index;
      _currentPage = _pages[index];
    });
  }



  @override
  Widget build(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
        child: Center(
          child: SizedBox(
            width: MediaQuery.of(context).size.width < 600 ? MediaQuery.of(context).size.width * 0.75 : 400,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Align(
                  alignment: Alignment.center,
                  child: Text(
                    'بار خود را در سه مرحله به راحتی ثبت کنید',
                    style: TextStyle(color: Colors.black, fontSize: 17),
                  ),
                ),
                SizedBox(
                  child: Lottie.asset('assets/new_order.json'),
                  // child: Lottie.asset('assets/cargo.json'),
                ),
                const SizedBox(height: 30,),

                Center(
                  child: SizedBox(
                    width: 200,
                    height: 50,
                    child:  ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          alignment: Alignment.center,
                          onPrimary: Colors.lightBlueAccent,
                          elevation: 0,
                          primary: Theme.of(context).primaryColor,
                        ),
                        onPressed: () {
                          // Get.to(const OwnerCode());
                        },
                        child: const Text(
                          'ثبت سفارش بار جدید',
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
    );
  }
}
