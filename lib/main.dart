import 'package:flutter/material.dart';
import 'package:sidul/bookmarks/bookmark/bookmark.dart';
import 'package:sidul/bookmarks/bookmarkEmpty/bookmarkEmpty.dart';
import 'package:sidul/downloads/download/download.dart';
import 'package:sidul/downloads/downloadEmpty/downloadEmpty.dart';
import 'package:sidul/eksplorasi/eksplor.dart';
import 'package:sidul/home/appBarHome.dart';
import 'package:sidul/home/bottomNavbar.dart';
import 'package:sidul/home/carouselText.dart';
import 'package:sidul/home/coverGrid.dart';
import 'package:sidul/models/dataCover.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Sidul Home Page',
      routes: {
        '/': (context) => const HomeScreen(),
        '/eksplorasi': (context) => const Eksplor(),
        '/bookmark': (context) => const Bookmark(),
        '/download': (context) => const download(),
      },
      initialRoute: '/',
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<String> textList = [
    'Semua',
    'Matematika',
    'Pemrograman Mobile',
    'Pemrograman Web',
  ];

  int _selectedTabIndex = 0;

  List<bool> selectedList = [true, false, false, false];

  void _onNavBarTapped(int index) {
    setState(() {
      _selectedTabIndex = index;
    });

    if (index == 1) {
      Navigator.pushReplacementNamed(context, '/eksplorasi');
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
      appBar: const appBarHome(),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            CarouselText(
              textList: textList,
              selectedList: selectedList,
              onTextTap: onTextTap,
            ),
            const SizedBox(height: 16.0),
            Divider(
              thickness: 1,
              color: Colors.grey[300],
            ),
            const Expanded(child: coverBook())
          ],
        ),
      ),
      bottomNavigationBar: bottomNavbar(
        selectedIndex: _selectedTabIndex,
        onTabChanged: _onNavBarTapped,
      ),
    );
  }
}
