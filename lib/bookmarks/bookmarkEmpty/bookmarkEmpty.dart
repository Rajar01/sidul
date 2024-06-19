import 'package:flutter/material.dart';
import 'package:sidul/bookmarks/bookmark/bodyBookmark.dart';
import 'package:sidul/bookmarks/bookmarkEmpty/appBarBookmarkEmpty.dart';
import 'package:sidul/bookmarks/bookmarkEmpty/bodyBookmarkEmpty.dart';
import 'package:sidul/home/bottomNavbar.dart';

class bookmarkEmpty extends StatefulWidget {
  const bookmarkEmpty({super.key});

  @override
  _bookmarkEmptyState createState() => _bookmarkEmptyState();
}

class _bookmarkEmptyState extends State<bookmarkEmpty> {
  int _selectedTabIndex = 1;

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
      appBar: appBarBookmarkEmpty(),
      body: const bodyBookmarkEmpty(),
      bottomNavigationBar: bottomNavbar(
        selectedIndex: _selectedTabIndex,
        onTabChanged: _onNavBarTapped,
      ),
    );
  }
}
