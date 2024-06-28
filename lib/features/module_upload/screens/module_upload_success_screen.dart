import 'package:flutter/material.dart';

class ModuleUploadSuccessScreen extends StatefulWidget {
  const ModuleUploadSuccessScreen({super.key});

  @override
  State<ModuleUploadSuccessScreen> createState() => _ModuleUploadSuccessScreenState();
}

class _ModuleUploadSuccessScreenState extends State<ModuleUploadSuccessScreen> {
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
              "assets/images/success_upload_module.png",
              width: 260,
              height: 308,
            ),
            const SizedBox(height: 16),
            Text(
              "Pengunggahan Berhasil",
              style: theme.textTheme.headlineSmall,
            ),
            const SizedBox(height: 4),
            Text(
              "Berhasil mengunggah modul Anda",
              style: theme.textTheme.bodyLarge,
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
