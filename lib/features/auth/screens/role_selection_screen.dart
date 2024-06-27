import 'package:flutter/material.dart';

class RoleSelectionScreen extends StatefulWidget {
  const RoleSelectionScreen({super.key});

  @override
  State<RoleSelectionScreen> createState() => _RoleSelectionScreenState();
}

class _RoleSelectionScreenState extends State<RoleSelectionScreen> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Column(
              children: [
                LinearProgressIndicator(
                  value: 0,
                  minHeight: 16,
                  borderRadius:
                  const BorderRadius.all(Radius.circular(16)),
                  valueColor: AlwaysStoppedAnimation(theme.colorScheme.primary),
                ),
                const SizedBox(height: 16),
                Text(
                  "Sebagai apa kamu ingin masuk?",
                  style: theme.textTheme.headlineSmall,
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 8),
                SizedBox(
                  width: double.infinity,
                  child: FilledButton(
                    onPressed: () {},
                    child: const Text("Pelajar"),
                  ),
                ),
                const SizedBox(height: 4),
                SizedBox(
                  width: double.infinity,
                  child: OutlinedButton(
                    onPressed: () {},
                    child: const Text("Pengajar"),
                  ),
                ),
              ],
            ),
            Expanded(child: Container()),
            Column(
              children: [
                SizedBox(
                  width: double.infinity,
                  child: FilledButton(
                    onPressed: () {},
                    child: const Text("Lanjutkan"),
                  ),
                ),
                const SizedBox(height: 4),
                SizedBox(
                  width: double.infinity,
                  child: TextButton(
                    onPressed: () {},
                    child: const Text("Kembali"),
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
