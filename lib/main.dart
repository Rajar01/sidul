import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sidul/features/auth/screens/completed_profile_screen.dart';
import 'package:sidul/features/auth/screens/major_selection.dart';
import 'package:sidul/features/auth/screens/register_screen.dart';
import 'package:sidul/features/auth/screens/role_selection_screen.dart';
import 'package:sidul/features/auth/screens/success_create_account_screen.dart';

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
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const CompletedProfileScreen(),
    );
  }
}
