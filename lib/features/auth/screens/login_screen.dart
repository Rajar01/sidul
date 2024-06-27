import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 80,
              height: 80,
              color: Colors.grey,
            ),
            const SizedBox(height: 32),
            Column(
              children: [
                TextFormField(
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    label: Text("Username"),
                  ),
                ),
                const SizedBox(height: 12),
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
                const SizedBox(height: 4),
                GestureDetector(
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      "Lupa password ?",
                      style: theme.textTheme.bodyMedium!.copyWith(
                        color: theme.colorScheme.primary,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                SizedBox(
                  width: double.infinity,
                  child: FilledButton(
                    onPressed: () {},
                    child: const Text("Masuk"),
                  ),
                ),
                const SizedBox(height: 4),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Tidak punya akun ? ",
                      style: theme.textTheme.bodyMedium,
                    ),
                    GestureDetector(
                      child: Text(
                        "Daftar",
                        style: theme.textTheme.bodyMedium!.copyWith(
                          color: theme.colorScheme.primary,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
