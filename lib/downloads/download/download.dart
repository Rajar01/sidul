import 'package:flutter/material.dart';
import 'package:sidul/downloads/download/bodyDownload.dart';
import 'package:sidul/downloads/downloadEmpty/appBarDownloadEmpty.dart';
import 'package:sidul/home/bottomNavbar.dart';

class download extends StatefulWidget {
  const download({super.key});

  @override
  State<download> createState() => _downloadState();
}

class _downloadState extends State<download> {
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
      body: bodyDownload(),
      bottomNavigationBar: bottomNavbar(
        selectedIndex: _selectedTabIndex,
        onTabChanged: _onNavBarTapped,
      ),
    );
  }
}
