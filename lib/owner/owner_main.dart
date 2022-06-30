import 'package:flutter/material.dart';
import 'package:sample/globals.dart';
import 'package:sample/owner/new_order.dart';
import 'package:sample/owner/orders.dart';
import 'package:sample/owner/profile.dart';

class OwnerMain extends StatefulWidget {
  const OwnerMain({Key? key}) : super(key: key);

  @override
  State<OwnerMain> createState() => _OwnerMainState();
}

class _OwnerMainState extends State<OwnerMain> {
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
    _page1 = const OwnerProfile();
    _page2 = const OwnerNewOrder();
    _page3 = const OwnerOrders();

    _pages = [_page1, _page2, _page3];
    _currentIndex = 1;
    _currentPage = _page2;
  }

  void _changeTab(int index) {
    setState(() {
      _currentIndex = index;
      _currentPage = _pages[index];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80,

        title: const Text('باربد'),
        centerTitle: true,
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: _currentPage,
      bottomNavigationBar: BottomNavigationBar(
          selectedFontSize: 13,
          selectedIconTheme: const IconThemeData(color: Colors.white, size: 40),
          unselectedIconTheme: const IconThemeData(color: Colors.white60),
          unselectedItemColor: Colors.white60,
          selectedItemColor: Colors.white,
          backgroundColor: Theme.of(context).primaryColor,
          onTap: (index) {
            _changeTab(index);
          },
          currentIndex: _currentIndex,
          items: const [
            BottomNavigationBarItem(
              label: 'پروفایل',
              icon: Icon(Icons.account_circle),
            ),
            BottomNavigationBarItem(
              label: 'سفارش جدید',
              icon: Icon(Icons.add_circle),
            ),
            BottomNavigationBarItem(
              label: 'سفارش ها',
              icon: Icon(Icons.list_sharp),
            ),
          ]),
    );
  }
}
