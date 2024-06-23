import 'package:flutter/material.dart';
import 'package:sidul/eksplorasi/appBarEksplor.dart';
import 'package:sidul/eksplorasi/bodyEksplor.dart';
import 'package:sidul/home/bottomNavbar.dart';

class Eksplor extends StatefulWidget {
  const Eksplor({Key? key}) : super(key: key);

  @override
  _EksplorState createState() => _EksplorState();
}

class _EksplorState extends State<Eksplor> {
  int _selectedTabIndex = 1;

  List<bool> selectedList = [true, false, false, false];

  void _onNavBarTapped(int index) {
    setState(() {
      _selectedTabIndex = index;
    });

    if (index == 0) {
      Navigator.pushReplacementNamed(context, '/');
    }
    if (index == 2) {
      Navigator.pushReplacementNamed(context, '/bookmark');
    }
    if (index == 3) {
      Navigator.pushReplacementNamed(context, '/download');
    }
  }

  void onTextTap(int index) {
    setState(() {
      for (int i = 0; i < selectedList.length; i++) {
        selectedList[i] = i == index;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: appBarEksplor(),
      body: const Padding(
        padding: EdgeInsets.all(16.0),
        child: bodyEksplor(),
      ),
      bottomNavigationBar: bottomNavbar(
        selectedIndex: _selectedTabIndex,
        onTabChanged: _onNavBarTapped,
      ),
    );
  }
}
