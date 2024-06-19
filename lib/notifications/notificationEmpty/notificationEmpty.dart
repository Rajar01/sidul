import 'package:flutter/material.dart';
import 'package:sidul/notifications/notificationEmpty/appBarNotiafication.dart';
import 'package:sidul/notifications/notificationEmpty/bodyNotification.dart';

class notificationEmpty extends StatelessWidget {
  const notificationEmpty({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Notifications',
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: appBarNotificationEmpty(),
        body: bodyNotificationEmpty(),
      ),
    );
  }
}
