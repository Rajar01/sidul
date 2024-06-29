import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sidul/features/auth/screens/forgot_password_screen.dart';
import 'package:sidul/features/auth/screens/login_screen.dart';
import 'package:sidul/features/auth/screens/register_screen.dart';
import 'package:sidul/features/module/screens/about_module_screen.dart';
import 'package:sidul/features/module/screens/bookmark_screen.dart';
import 'package:sidul/features/module/screens/downloaded_module_screen.dart';
import 'package:sidul/features/module/screens/enter_reviews_screen.dart';
import 'package:sidul/features/module/screens/explore_screen.dart';
import 'package:sidul/features/module/screens/filter_screen.dart';
import 'package:sidul/features/module/screens/home_screen.dart';
import 'package:sidul/features/module/screens/module_chat_with_ai_screen.dart';
import 'package:sidul/features/module/screens/module_discussion_screen.dart';
import 'package:sidul/features/module/screens/module_review_screen.dart';
import 'package:sidul/features/module/screens/module_screen.dart';
import 'package:sidul/features/module/screens/search_result_screen.dart';
import 'package:sidul/features/module_upload/screens/module_upload_screen.dart';
import 'package:sidul/features/module_upload/screens/module_upload_success_screen.dart';
import 'package:sidul/features/module_upload/screens/uploaded_module_screen.dart';

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
        child: LoginScreen(),
      ),
    );
  }
}
