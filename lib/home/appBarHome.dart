import 'package:flutter/material.dart';

class AppBarHome extends StatelessWidget implements PreferredSizeWidget {
  @override
  final Size preferredSize;

  AppBarHome({Key? key})
      : preferredSize = const Size.fromHeight(56.0),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Image.asset(
                'assets/img/appbarImage.jpeg',
                fit: BoxFit.contain,
                height: 32,
              ),
              const SizedBox(width: 16),
              const Text(
                'SIDUL',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          const Row(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 8.0),
                child: SizedBox(
                  width: 24,
                  height: 24,
                  child: Icon(Icons.search),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 8.0),
                child: SizedBox(
                  width: 24,
                  height: 24,
                  child: Icon(Icons.notifications),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 8.0),
                child: SizedBox(
                  width: 24,
                  height: 24,
                  child: Icon(Icons.settings),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
