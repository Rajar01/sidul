import 'package:flutter/material.dart';
import 'package:sidul/downloads/downloadEmpty/appBarDownloadEmpty.dart';
import 'package:sidul/downloads/downloadEmpty/bodyDownloadEmpty.dart';
import 'package:sidul/home/bottomNavbar.dart';

class downloadEmpty extends StatefulWidget {
  const downloadEmpty({super.key});

  @override
  _downloadEmptyState createState() => _downloadEmptyState();
}

class _downloadEmptyState extends State<downloadEmpty> {
  int _selectedTabIndex = 3;

  void _onNavBarTapped(int index) {
    setState(() {
      _selectedTabIndex = index;
    });

    if (index == 0) {
      Navigator.pushReplacementNamed(context, '/');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: appBarDownloadEmpty(),
      body: const bodyDownloadEmpty(),
      bottomNavigationBar: bottomNavbar(
        selectedIndex: _selectedTabIndex,
        onTabChanged: _onNavBarTapped,
      ),
    );
  }
}
