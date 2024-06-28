import 'package:flutter/material.dart';

class MajorSettingsScreen extends StatefulWidget {
  const MajorSettingsScreen({super.key});

  @override
  State<MajorSettingsScreen> createState() => _MajorSettingsScreenState();
}

class _MajorSettingsScreenState extends State<MajorSettingsScreen> {
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
    return Scaffold(
      appBar: AppBar(
        leading: const BackButtonIcon(),
        title: const Text("Jurusan Pilihan Anda"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
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
                        padding: const EdgeInsets.symmetric(
                            horizontal: 8, vertical: 12),
                        onSelected: (_) {},
                      ),
                    )
                    .toList(),
              ),
            ),
            Expanded(child: Container()),
            SizedBox(
              width: double.infinity,
              child: Row(
                children: [
                  Expanded(
                    child: OutlinedButton(
                      onPressed: () {},
                      child: const Text("Batal"),
                    ),
                  ),
                  const SizedBox(width: 8),
                  Expanded(
                    child: FilledButton(
                      onPressed: () {},
                      child: const Text("Simpan"),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
