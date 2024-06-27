import 'package:flutter/material.dart';

class MajorSelectionScreen extends StatefulWidget {
  const MajorSelectionScreen({super.key});

  @override
  State<MajorSelectionScreen> createState() => _MajorSelectionScreenState();
}

class _MajorSelectionScreenState extends State<MajorSelectionScreen> {
  final majors = [
    "Teknik Informatika",
    "Akutansi",
    "Perikanan",
    "Teknik Elektro",
    "Administrasi Negara",
    "Hubungan Internasional",
  ];

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
                  value: 0.5,
                  minHeight: 16,
                  borderRadius: const BorderRadius.all(Radius.circular(16)),
                  valueColor: AlwaysStoppedAnimation(theme.colorScheme.primary),
                ),
                const SizedBox(height: 16),
                Text(
                  "Jurusan apa yang ingin kamu pilih?",
                  style: theme.textTheme.headlineSmall,
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 8),
                SizedBox(
                  width: double.infinity,
                  child: Wrap(
                    spacing: 8,
                    runSpacing: 8,
                    children: majors
                        .map(
                          (major) => ChoiceChip(
                            label: Text(major),
                            selected: false,
                            padding: const EdgeInsets.symmetric(horizontal: 8,vertical: 12),
                            onSelected: (_) {},
                          ),
                        )
                        .toList(),
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
