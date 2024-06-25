import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sidul/features/auth/providers/login_notifier_provider.dart';
import 'package:sidul/features/auth/screens/register_screen.dart';
import 'package:sidul/features/module/screens/home_screen.dart';
import 'package:sidul/shared/widgets/button_widget.dart';
import 'package:sidul/shared/widgets/input_field_widget.dart';
import 'package:sidul/shared/widgets/password_field_widget.dart';

class LoginScreen extends ConsumerStatefulWidget {
  const LoginScreen({super.key});

  @override
  ConsumerState<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends ConsumerState<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    ref.watch(loginNotifierProvider);

    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 32),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                children: [
                  Container(width: 80, height: 80, color: Colors.grey),
                  const SizedBox(height: 8),
                  const Text(
                    "SIDUL",
                    style: TextStyle(
                      fontFamily: "Inter",
                      fontWeight: FontWeight.w900,
                      fontSize: 24,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 48),
              Column(
                children: [
                  HATextField(
                    title: "Username",
                    onChanged: ref
                        .read(loginNotifierProvider.notifier)
                        .usernameFieldOnChange,
                  ),
                  const SizedBox(height: 16),
                  HAPasswordField(
                    title: "Password",
                    onChanged: ref
                        .read(loginNotifierProvider.notifier)
                        .passwordFieldOnChange,
                  ),
                  const SizedBox(height: 8),
                  Align(
                    alignment: Alignment.centerRight,
                    child: GestureDetector(
                      onTap: () {},
                      child: const Text(
                        "Lupa password ?",
                        style: TextStyle(
                          fontFamily: "Inter",
                          fontWeight: FontWeight.w600,
                          fontSize: 12,
                          color: Color.fromARGB(255, 0, 111, 253),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 16),
                  HAButton(
                    text: "Masuk",
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const HomeScreen(),
                        ),
                      );
                    },
                  ),
                  const SizedBox(height: 8),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "Tidak punya akun ? ",
                        style: TextStyle(
                          fontFamily: "Inter",
                          fontWeight: FontWeight.w400,
                          fontSize: 12,
                          color: Color.fromARGB(255, 113, 114, 122),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const RegisterScreen(),
                            ),
                          );
                        },
                        child: const Text(
                          "Daftar",
                          style: TextStyle(
                            fontFamily: "Inter",
                            fontWeight: FontWeight.w600,
                            fontSize: 12,
                            color: Color.fromARGB(255, 0, 111, 253),
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
