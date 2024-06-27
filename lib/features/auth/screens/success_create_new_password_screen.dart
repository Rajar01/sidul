import 'package:flutter/material.dart';

class SuccessCreateNewPasswordScreen extends StatefulWidget {
  const SuccessCreateNewPasswordScreen({super.key});

  @override
  State<SuccessCreateNewPasswordScreen> createState() => _SuccessCreateNewPasswordScreenState();
}

class _SuccessCreateNewPasswordScreenState extends State<SuccessCreateNewPasswordScreen> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "assets/images/create_new_password_success_ilustration.png",
              width: 260,
              height: 260,
            ),
            const SizedBox(height: 16),
            Text(
              "Password Diperbarui",
              style: theme.textTheme.headlineSmall,
            ),
            const SizedBox(height: 4),
            Text(
              "Password Anda telah berhasil diperbarui",
              style: theme.textTheme.bodyLarge,
            ),
            const SizedBox(height: 16),
            SizedBox(
              width: double.infinity,
              child: FilledButton(
                onPressed: () {},
                child: const Text("Masuk"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
