import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sidul/features/auth/providers/register_notifier_provider.dart';
import 'package:sidul/shared/widgets/button_widget.dart';
import 'package:sidul/shared/widgets/input_field_widget.dart';
import 'package:sidul/shared/widgets/password_field_widget.dart';

class RegisterScreen extends ConsumerStatefulWidget {
  const RegisterScreen({super.key});

  @override
  ConsumerState<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends ConsumerState<RegisterScreen> {
  @override
  Widget build(BuildContext context) {
    ref.watch(registerNotifierProvider);

    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 32),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Column(
                children: [
                  Text(
                    "Pendaftaran",
                    style: TextStyle(
                      fontFamily: "Inter",
                      fontWeight: FontWeight.w900,
                      fontSize: 24,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    "Buat akun Anda",
                    style: TextStyle(
                      fontFamily: "Inter",
                      fontWeight: FontWeight.w400,
                      fontSize: 16,
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
                        .read(registerNotifierProvider.notifier)
                        .usernameFieldOnChange,
                  ),
                  const SizedBox(height: 16),
                  HATextField(
                    title: "Email",
                    onChanged: ref
                        .read(registerNotifierProvider.notifier).emailFieldOnChange,
                  ),
                  const SizedBox(height: 16),
                  HAPasswordField(
                    title: "Password",
                    onChanged: ref
                        .read(registerNotifierProvider.notifier)
                        .passwordFieldOnChange,
                  ),
                  const SizedBox(height: 16),
                  HAPasswordField(
                    title: "Konfirmasi Password",
                    onChanged: (String value) {},
                  ),
                  const SizedBox(height: 32),
                  HAButton(
                    text: "Daftar",
                    onPressed: ref
                        .read(registerNotifierProvider.notifier)
                        .onRegisterButtonClicked,
                  ),
                  const SizedBox(height: 8),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "Sudah punya akun ? ",
                        style: TextStyle(
                          fontFamily: "Inter",
                          fontWeight: FontWeight.w400,
                          fontSize: 12,
                          color: Color.fromARGB(255, 113, 114, 122),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: const Text(
                          "Masuk",
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
