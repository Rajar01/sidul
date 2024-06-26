import 'package:flutter/material.dart';

class MajorSelectionScreen extends StatefulWidget {
  const MajorSelectionScreen({super.key});

  @override
  State<MajorSelectionScreen> createState() => _MajorSelectionScreenState();
}

class _MajorSelectionScreenState extends State<MajorSelectionScreen> {
  // TODO implement API call to get all majors
  final majors = <String>[
    "Akutansi",
    "Perkebunan",
    "Teknik Elektronika",
    "Teknik Informatika",
    "Sastra",
    "Pervaloan",
    "Teknik Listrik",
    "Kedokteran",
  ];

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final colorScheme = Theme.of(context).colorScheme;
    final selectedMajors = [majors.first];

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(32),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              children: [
                LinearProgressIndicator(
                  value: 0.5,
                  minHeight: 16,
                  borderRadius: const BorderRadius.all(Radius.circular(16)),
                  valueColor: AlwaysStoppedAnimation(colorScheme.primary),
                ),
                const SizedBox(height: 32),
                Column(
                  children: [
                    Text(
                      "Jurusan apa yang ingin kamu pilih?",
                      style: textTheme.titleLarge,
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 16),
                    SizedBox(
                      width: double.infinity,
                      child: Wrap(
                        runSpacing: 16,
                        spacing: 16,
                        children: majors
                            .map(
                              (major) => FilterChip(
                                label: Text(major),
                                showCheckmark: false,
                                selected: selectedMajors.contains(major),
                                labelPadding: const EdgeInsets.symmetric(
                                  horizontal: 12,
                                  vertical: 8,
                                ),
                                onSelected: (_) {},
                              ),
                            )
                            .toList(),
                      ),
                    )
                  ],
                ),
              ],
            ),
            Column(
              children: [
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
                const SizedBox(height: 8),
                SizedBox(
                  width: double.infinity,
                  height: 48,
                  child: TextButton(
                    style: FilledButton.styleFrom(
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(4),
                        ),
                      ),
                    ),
                    onPressed: () {},
                    child: const Text("Kembali"),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
