import 'package:flutter/material.dart';
import 'package:sidul/notifications/notification/notification.dart';
import 'package:sidul/search/searchbar.dart';

class appBarHome extends StatelessWidget implements PreferredSizeWidget {
  const appBarHome({Key? key})
      : preferredSize = const Size.fromHeight(kToolbarHeight + 0.0);

  @override
  final Size preferredSize;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      title: Padding(
        padding: const EdgeInsets.only(left: 12.0),
        child: Row(
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
            Row(
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const notification(),
                      ),
                    );
                  },
                  child: const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8.0),
                    child: SizedBox(
                      width: 24,
                      height: 24,
                      child: Icon(Icons.notifications),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    showSearch(
                      context: context,
                      delegate: CustomSearchDelegate(),
                    );
                  },
                  child: const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8.0),
                    child: SizedBox(
                      width: 24,
                      height: 24,
                      child: Icon(Icons.search),
                    ),
                  ),
                ),
                const Padding(
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
      ),
    );
  }
}
