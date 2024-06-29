import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sidul/features/auth/providers/register_notifier_provider.dart';
import 'package:sidul/features/auth/screens/major_selection.dart';
import 'package:sidul/shared/enums/role.dart';

class RoleSelectionScreen extends ConsumerWidget {
  const RoleSelectionScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);
    final role = ref.watch(registerNotifierProvider).role;

    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              Column(
                children: [
                  LinearProgressIndicator(
                    value: 0,
                    minHeight: 16,
                    borderRadius: const BorderRadius.all(Radius.circular(16)),
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
                    child: role == Role.learner
                        ? FilledButton(
                            onPressed: () {
                              ref
                                  .read(registerNotifierProvider.notifier)
                                  .onRoleSelected(Role.learner);
                            },
                            child: const Text("Pelajar"),
                          )
                        : OutlinedButton(
                            onPressed: () {
                              ref
                                  .read(registerNotifierProvider.notifier)
                                  .onRoleSelected(Role.learner);
                            },
                            child: const Text("Pelajar"),
                          ),
                  ),
                  const SizedBox(height: 4),
                  SizedBox(
                    width: double.infinity,
                    child: role == Role.lecturer
                        ? FilledButton(
                            onPressed: () {
                              ref
                                  .read(registerNotifierProvider.notifier)
                                  .onRoleSelected(Role.lecturer);
                            },
                            child: const Text("Pengajar"),
                          )
                        : OutlinedButton(
                            onPressed: () {
                              ref
                                  .read(registerNotifierProvider.notifier)
                                  .onRoleSelected(Role.lecturer);
                            },
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
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const MajorSelectionScreen(),
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
