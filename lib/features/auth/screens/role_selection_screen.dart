import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sidul/features/auth/providers/register_notifier_provider.dart';
import 'package:sidul/features/auth/screens/major_selection.dart';
import 'package:sidul/shared/enums/role.dart';
import 'package:sidul/shared/widgets/button_widget.dart';

class RoleSelectionScreen extends ConsumerStatefulWidget {
  const RoleSelectionScreen({super.key});

  @override
  ConsumerState<RoleSelectionScreen> createState() =>
      _RoleSelectionScreenState();
}

class _RoleSelectionScreenState extends ConsumerState<RoleSelectionScreen> {
  final roleChoices = <Role>[Role.learner, Role.lecturer];

  @override
  Widget build(BuildContext context) {
    var role = ref.watch(registerNotifierProvider).role;

    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(32),
          child: Column(
            children: [
              const LinearProgressIndicator(
                value: 0,
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
                      "Sebagai apa kamu ingin masuk?",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: "Inter",
                        fontWeight: FontWeight.w900,
                        fontSize: 24,
                      ),
                    ),
                    const SizedBox(height: 16),
                    Wrap(
                      runSpacing: 16,
                      children: roleChoices
                          .map(
                            (roleChoiced) => ChoiceChip(
                              selectedColor:
                                  const Color.fromARGB(255, 0, 111, 253),
                              showCheckmark: false,
                              labelStyle: TextStyle(
                                fontFamily: "Inter",
                                fontWeight: FontWeight.w600,
                                fontSize: 12,
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
                              label: SizedBox(
                                width: double.infinity,
                                height: 48,
                                child: Align(
                                  child: Text(
                                    roleChoiced == Role.learner
                                        ? "Pelajar"
                                        : "Pengajar",
                                  ),
                                ),
                              ),
                              selected: role == roleChoiced,
                              onSelected: (_) => {
                                ref
                                    .read(registerNotifierProvider.notifier)
                                    .onRoleSelected(roleChoiced)
                              },
                            ),
                          )
                          .toList(),
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
                          builder: (context) => const MajorSelectionScreen(),
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
