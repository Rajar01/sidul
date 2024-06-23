import 'package:flutter/material.dart';

class modulAppBar extends StatelessWidget implements PreferredSizeWidget {
  const modulAppBar({Key? key})
      : preferredSize = const Size.fromHeight(56.0),
        super(key: key);

  @override
  final Size preferredSize;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      title: Row(
        children: [
          GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: const Padding(
              padding: EdgeInsets.symmetric(horizontal: 8.0),
              child: SizedBox(
                width: 24,
                height: 24,
                child: Icon(
                  Icons.arrow_back_ios,
                  color: Colors.blue,
                ),
              ),
            ),
          ),
          const Spacer(),
          GestureDetector(
            onTap: () {
              // Handle onTap for other icons like forum or more_vert
            },
            child: const Padding(
              padding: EdgeInsets.symmetric(horizontal: 8.0),
              child: SizedBox(
                width: 24,
                height: 24,
                child: Icon(
                  Icons.forum,
                  color: Colors.blue,
                ),
              ),
            ),
          ),
          const SizedBox(width: 8),
          GestureDetector(
            onTap: () {
              // Handle onTap for more_vert icon
            },
            child: const Padding(
              padding: EdgeInsets.symmetric(horizontal: 8.0),
              child: SizedBox(
                width: 24,
                height: 24,
                child: Icon(
                  Icons.more_vert,
                  color: Colors.blue,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
