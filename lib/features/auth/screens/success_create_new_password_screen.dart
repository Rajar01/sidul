import 'package:flutter/material.dart';

class SuccessCreateNewPasswordScreen extends StatefulWidget {
  const SuccessCreateNewPasswordScreen({super.key});

  @override
  State<SuccessCreateNewPasswordScreen> createState() =>
      _SuccessCreateNewPasswordScreenState();
}

class _SuccessCreateNewPasswordScreenState
    extends State<SuccessCreateNewPasswordScreen> {
  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(32),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Image(
              width: 260,
              height: 305,
              image: AssetImage(
                  "assets/images/create_new_password_success_ilustration.png"),
            ),
            const SizedBox(height: 32),
            Text(
              "Password Diperbarui",
              style: textTheme.titleLarge,
            ),
            const SizedBox(height: 8),
            Text(
              "Password Anda telah diperbarui",
              style: textTheme.titleSmall,
            ),
            const SizedBox(height: 32),
            SizedBox(
              width: double.infinity,
              height: 48,
              child: FilledButton(
                style: FilledButton.styleFrom(
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(4),
                    ),
                  ),
                ),
                onPressed: () {},
                child: const Text("Ke Halaman Masuk"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
