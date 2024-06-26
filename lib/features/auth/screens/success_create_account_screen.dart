import 'package:flutter/material.dart';

class SuccessCreateAccountScreen extends StatefulWidget {
  const SuccessCreateAccountScreen({super.key});

  @override
  State<SuccessCreateAccountScreen> createState() =>
      _SuccessCreateAccountScreenState();
}

class _SuccessCreateAccountScreenState
    extends State<SuccessCreateAccountScreen> {
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
              image: AssetImage(
                  "assets/images/registration_success_ilustration.png"),
            ),
            const SizedBox(height: 32),
            Text(
              "Pendaftaran Berhasil",
              style: textTheme.titleLarge,
            ),
            const SizedBox(height: 8),
            Text(
              "Akun anda telah berhasil dibuat",
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
                child: const Text("Lanjutkan"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
