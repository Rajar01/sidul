import 'package:flutter/material.dart';
import 'package:sidul/notifications/notification/appBarNotiafication.dart';
import 'package:sidul/notifications/notification/bodyNotification.dart';

class notification extends StatelessWidget {
  const notification({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Notifications',
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: appBarNotification(),
        body: bodyNotification(),
      ),
    );
  }
}
