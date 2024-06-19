import 'package:flutter/material.dart';
import 'package:sidul/bookmarks/bookmark/bodyBookmark.dart';
import 'package:sidul/bookmarks/bookmarkEmpty/appBarBookmarkEmpty.dart';
import 'package:sidul/home/bottomNavbar.dart';
import 'package:sidul/bookmarks/bookmark/carouselText.dart';

class Bookmark extends StatefulWidget {
  const Bookmark({Key? key}) : super(key: key);

  @override
  _BookmarkState createState() => _BookmarkState();
}

class _BookmarkState extends State<Bookmark> {
  int _selectedTabIndex = 2;

  final List<String> textList = [
    'Semua',
    'Matematika',
    'Pemrograman Mobile',
    'Pemrograman Web',
  ];

  List<bool> selectedList = [true, false, false, false];

  void _onNavBarTapped(int index) {
    setState(() {
      _selectedTabIndex = index;
    });

    if (index == 0) {
      Navigator.pushReplacementNamed(context, '/');
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
      appBar: appBarBookmarkEmpty(), // Corrected naming convention
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            carouselText(
              textList: textList,
              selectedList: selectedList,
              onTextTap: onTextTap,
            ),
            const SizedBox(height: 16.0),
            Divider(
              thickness: 1,
              color: Colors.grey[300],
            ),
            const Expanded(
              child:
                  bodyBookmark(), // Wrap BodyBookmark with Expanded to fill remaining space
            ),
          ],
        ),
      ),
      bottomNavigationBar: bottomNavbar(
        // Corrected naming convention
        selectedIndex: _selectedTabIndex,
        onTabChanged: _onNavBarTapped,
      ),
    );
  }
}
