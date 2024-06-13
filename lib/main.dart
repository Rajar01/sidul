import 'package:flutter/material.dart';
import 'package:sidul/home/appBarHome.dart';
import 'package:sidul/home/carouselText.dart';
import 'package:sidul/models/dataCover.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final List<String> textList = [
    'Semua',
    'Matematika',
    'Pemrograman Mobile',
    'Pemrograman Web',
  ];

  int _selectedTabIndex = 0;

  final _photos = [
    Data(
      image: 'assets/img/Cover/cover1.jpg',
      text: 'Jaringan Komputer',
      author: 'Muhammad Diponegoro',
    ),
  ];

  void _onNavBarTapped(int index) {
    setState(() {
      _selectedTabIndex = index;
    });
  }

  List<bool> selectedList = [true, false, false, false];

  void onTextTap(int index) {
    setState(() {
      for (int i = 0; i < selectedList.length; i++) {
        selectedList[i] = i == index;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final _bottomNavBarItems = <BottomNavigationBarItem>[
      const BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Beranda'),
      const BottomNavigationBarItem(
          icon: Icon(Icons.explore), label: 'Eksplorasi'),
      const BottomNavigationBarItem(
          icon: Icon(Icons.bookmark), label: 'Bookmark'),
      const BottomNavigationBarItem(
          icon: Icon(Icons.download), label: 'Download'),
    ];

    final _bottomNavBar = BottomNavigationBar(
      backgroundColor: Colors.white,
      type: BottomNavigationBarType.fixed,
      items: _bottomNavBarItems,
      currentIndex: _selectedTabIndex,
      unselectedItemColor: Colors.grey,
      selectedItemColor: Colors.blue,
      onTap: _onNavBarTapped,
    );

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Sidul Home Page",
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBarHome(),
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
            ],
          ),
        ),
        bottomNavigationBar: _bottomNavBar,
      ),
    );
  }
}
