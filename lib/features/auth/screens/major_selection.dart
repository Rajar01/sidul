import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sidul/features/auth/providers/register_notifier_provider.dart';
import 'package:sidul/features/auth/screens/completed_profile_screen.dart';
import 'package:sidul/shared/widgets/button_widget.dart';

class MajorSelectionScreen extends ConsumerStatefulWidget {
  const MajorSelectionScreen({super.key});

  @override
  ConsumerState<MajorSelectionScreen> createState() => _MajorSelectionState();
}

class _MajorSelectionState extends ConsumerState<MajorSelectionScreen> {
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
    final selectedMajors = ref.watch(registerNotifierProvider).majors;

    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(32),
          child: Column(
            children: [
              const LinearProgressIndicator(
                value: 50 / 100,
                minHeight: 16,
                borderRadius: BorderRadius.all(Radius.circular(16)),
                valueColor:
                    AlwaysStoppedAnimation(Color.fromARGB(255, 0, 111, 253)),
              ),
              const SizedBox(height: 32),
              Expanded(
                child: Column(
                  children: [
                    const Text(
                      "Jurusan apa yang ingin kamu pilih?",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: "Inter",
                        fontWeight: FontWeight.w900,
                        fontSize: 24,
                      ),
                    ),
                    const SizedBox(height: 16),
                    SizedBox(
                      width: double.infinity,
                      child: Wrap(
                        spacing: 16,
                        runSpacing: 16,
                        children: majors
                            .map(
                              (major) => FilterChip(
                                selectedColor:
                                    const Color.fromARGB(255, 0, 111, 253),
                                showCheckmark: false,
                                labelStyle: TextStyle(
                                  fontFamily: "Inter",
                                  fontSize: 12,
                                  fontWeight: FontWeight.w600,
                                  color: MaterialStateColor.resolveWith(
                                    (states) {
                                      if (states
                                          .contains(MaterialState.selected)) {
                                        return Colors.white;
                                      } else {
                                        return const Color.fromARGB(
                                            255, 113, 114, 122);
                                      }
                                    },
                                  ),
                                ),
                                shape: const RoundedRectangleBorder(
                                  side: BorderSide.none,
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(4),
                                  ),
                                ),
                                label: Text(major),
                                labelPadding: const EdgeInsets.symmetric(
                                    horizontal: 12, vertical: 8),
                                selected: selectedMajors.contains(major),
                                onSelected: (bool onSelected) {
                                  if (onSelected) {
                                    ref
                                        .read(registerNotifierProvider.notifier)
                                        .addMajorToSelection(major);
                                  } else {
                                    ref
                                        .read(registerNotifierProvider.notifier)
                                        .removeMajorFromSelection(major);
                                  }
                                },
                              ),
                            )
                            .toList(),
                      ),
                    )
                  ],
                ),
              ),
              Column(
                children: [
                  HAButton(
                    text: "Lanjutkan",
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const CompletedProfileScreen(),
                        ),
                      );
                    },
                  ),
                  const SizedBox(height: 8),
                  HAButton(
                    text: "Kembali",
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    backgroundColor: Colors.transparent,
                    foregroundColor: const Color.fromARGB(255, 0, 111, 253),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
