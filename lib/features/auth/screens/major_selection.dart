import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sidul/features/auth/providers/register_notifier_provider.dart';
import 'package:sidul/features/auth/screens/completed_profile_screen.dart';

class MajorSelectionScreen extends ConsumerWidget {
  const MajorSelectionScreen({super.key});

  static const majors = [
    "Teknik Informatika",
    "Akutansi",
    "Perikanan",
    "Teknik Elektro",
    "Administrasi Negara",
    "Hubungan Internasional",
  ];

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);
    final selectedMajor = ref.watch(registerNotifierProvider).major;

    return SafeArea(
      child: Scaffold(
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
                              selected: selectedMajor == major,
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 8, vertical: 12),
                              onSelected: (selected) {
                                if (selected) {
                                  ref
                                      .read(registerNotifierProvider.notifier)
                                      .majorOnChange(major);
                                }
                              },
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
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                const CompleteYourProfileScreen(),
                          ),
                        );
                      },
                      child: const Text("Lanjutkan"),
                    ),
                  ),
                  const SizedBox(height: 4),
                  SizedBox(
                    width: double.infinity,
                    child: TextButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: const Text("Kembali"),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
