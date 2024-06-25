import 'package:flutter/material.dart';

// ignore: non_constant_identifier_names
NavigationBar HABottomNavigationBar() {
  return NavigationBar(
    height: 80,
    surfaceTintColor: Colors.white,
    indicatorColor: const Color.fromARGB(255, 0, 111, 253),
    destinations: const [
      NavigationDestination(
        icon: Icon(Icons.home_filled),
        selectedIcon: Icon(
          Icons.home_filled,
          color: Colors.white,
        ),
        label: "Beranda",
      ),
      NavigationDestination(
        icon: Icon(Icons.explore),
        label: "Ekplorasi",
      ),
      NavigationDestination(
        icon: Icon(Icons.bookmark),
        label: "Bookmark",
      ),
      NavigationDestination(
        icon: Icon(Icons.cloud_download),
        label: "Unduhan",
      ),
    ],
  );
}
