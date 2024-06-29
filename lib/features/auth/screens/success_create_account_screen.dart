import 'package:flutter/material.dart';
import 'package:sidul/features/module/screens/home_screen.dart';

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
    final theme = Theme.of(context);

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "assets/images/registration_success_ilustration.png",
              width: 260,
              height: 260,
            ),
            const SizedBox(height: 16),
            Text(
              "Pendaftaran Berhasil",
              style: theme.textTheme.headlineSmall,
            ),
            const SizedBox(height: 4),
            Text(
              "Akun anda telah berhasil dibuat",
              style: theme.textTheme.bodyLarge,
            ),
            const SizedBox(height: 16),
            SizedBox(
              width: double.infinity,
              child: FilledButton(
                onPressed: () {
                  Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const HomeScreen(),
                    ),
                    (Route<dynamic> route) => false,
                  );
                },
                child: const Text("Masuk"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
