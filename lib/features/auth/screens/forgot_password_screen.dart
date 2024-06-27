import 'package:flutter/material.dart';

class ForgorPasswordScreen extends StatefulWidget {
  const ForgorPasswordScreen({super.key});

  @override
  State<ForgorPasswordScreen> createState() => _ForgorPasswordScreenState();
}

class _ForgorPasswordScreenState extends State<ForgorPasswordScreen> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      appBar: AppBar(
        leading: const BackButtonIcon(),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Lupa Password",
              style: theme.textTheme.headlineSmall,
            ),
            const SizedBox(height: 2),
            Text(
              "Silahkan masukkan alamat email yang tertaut dengan akun Anda.",
              style: theme.textTheme.bodyMedium,
            ),
            const SizedBox(height: 16),
            TextFormField(
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                label: Text("Email"),
              ),
            ),
            const SizedBox(height: 12),
            SizedBox(
              width: double.infinity,
              child: FilledButton(
                onPressed: () {},
                child: const Text("Kirim Kode"),
              ),
            ),
            const SizedBox(height: 4),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Ingat password Anda ? ",
                  style: theme.textTheme.bodyMedium,
                ),
                GestureDetector(
                  child: Text(
                    "Masuk",
                    style: theme.textTheme.bodyMedium!.copyWith(
                      color: theme.colorScheme.primary,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
