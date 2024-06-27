import 'package:flutter/material.dart';

class CreateNewPasswordScreen extends StatefulWidget {
  const CreateNewPasswordScreen({super.key});

  @override
  State<CreateNewPasswordScreen> createState() =>
      _CreateNewPasswordScreenState();
}

class _CreateNewPasswordScreenState extends State<CreateNewPasswordScreen> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              "Password Baru",
              style: theme.textTheme.headlineSmall,
            ),
            const SizedBox(height: 2),
            Text(
              "Password baru Anda harus berbeda dengan password yang digunakan sebelumnya.",
              style: theme.textTheme.bodyMedium,
            ),
            const SizedBox(height: 16),
            TextFormField(
              obscureText: true,
              decoration: InputDecoration(
                border: const OutlineInputBorder(),
                label: const Text("Password"),
                suffixIcon: GestureDetector(
                  child: const Icon(Icons.visibility_off),
                ),
              ),
            ),
            const SizedBox(height: 12),
            TextFormField(
              obscureText: true,
              decoration: InputDecoration(
                border: const OutlineInputBorder(),
                label: const Text("Konfirmasi Password"),
                suffixIcon: GestureDetector(
                  child: const Icon(Icons.visibility_off),
                ),
              ),
            ),
            const SizedBox(height: 16),
            SizedBox(
              width: double.infinity,
              child: FilledButton(
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
