import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sidul/features/auth/screens/completed_profile_screen.dart';
import 'package:sidul/features/auth/screens/confirmation_code_from_email_screen.dart';
import 'package:sidul/features/auth/screens/create_new_password_screen.dart';
import 'package:sidul/features/auth/screens/forgot_password_screen.dart';
import 'package:sidul/features/auth/screens/login_screen.dart';
import 'package:sidul/features/auth/screens/major_selection.dart';
import 'package:sidul/features/auth/screens/register_screen.dart';
import 'package:sidul/features/auth/screens/role_selection_screen.dart';
import 'package:sidul/features/auth/screens/success_create_account_screen.dart';
import 'package:sidul/features/auth/screens/success_create_new_password_screen.dart';
import 'package:sidul/features/notification/screens/notification_screen.dart';

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sidul',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color.fromARGB(255, 0, 111, 253),
        ),
        useMaterial3: true,
      ),
      home: const SafeArea(
        child: NotificationScreen(),
      ),
    );
  }
}
