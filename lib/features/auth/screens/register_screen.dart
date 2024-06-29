import 'dart:developer' as developer;

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sidul/features/auth/providers/register_notifier_provider.dart';
import 'package:sidul/features/auth/screens/login_screen.dart';
import 'package:sidul/features/auth/screens/role_selection_screen.dart';
import 'package:sidul/shared/providers/app_state_provider.dart';

class RegisterScreen extends ConsumerWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.watch(registerNotifierProvider);

    final theme = Theme.of(context);
    final appState = ref.watch(appStateProvider);

    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                children: [
                  Text(
                    "Pendaftaran",
                    style: theme.textTheme.headlineMedium,
                  ),
                  const SizedBox(height: 2),
                  Text("Buat akun Anda", style: theme.textTheme.bodyLarge),
                ],
              ),
              const SizedBox(height: 32),
              Column(
                children: [
                  TextFormField(
                    onChanged: (value) => ref
                        .read(registerNotifierProvider.notifier)
                        .usernameFieldOnChange(value),
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      label: Text("Username"),
                    ),
                  ),
                  const SizedBox(height: 12),
                  TextFormField(
                    onChanged: (value) => ref
                        .read(registerNotifierProvider.notifier)
                        .emailFieldOnChange(value),
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      label: Text("Email"),
                    ),
                  ),
                  const SizedBox(height: 12),
                  TextFormField(
                    onChanged: (value) => ref
                        .read(registerNotifierProvider.notifier)
                        .passwordFieldOnChange(value),
                    obscureText: !appState["isPasswordFieldVisible"],
                    decoration: InputDecoration(
                      border: const OutlineInputBorder(),
                      label: const Text("Password"),
                      suffixIcon: GestureDetector(
                        onTap: () {
                          if (appState.containsKey("isPasswordFieldVisible")) {
                            if (appState["isPasswordFieldVisible"]) {
                              ref.read(appStateProvider.notifier).hidePassword();
                              developer.log("Hide Password",
                                  name: "sidul.register-screen");
                            } else {
                              ref.read(appStateProvider.notifier).showPassword();
                              developer.log("Show Password",
                                  name: "sidul.register-screen");
                            }
                          }
                        },
                        child: appState["isPasswordFieldVisible"]
                            ? const Icon(Icons.visibility)
                            : const Icon(Icons.visibility_off),
                      ),
                    ),
                  ),
                  const SizedBox(height: 16),
                  SizedBox(
                    width: double.infinity,
                    child: FilledButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const RoleSelectionScreen(),
                          ),
                        );
                      },
                      child: const Text("Daftar"),
                    ),
                  ),
                  const SizedBox(height: 4),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Sudah punya akun ? ",
                        style: theme.textTheme.bodyMedium,
                      ),
                      GestureDetector(
                        onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const LoginScreen(),
                          ),
                        ),
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
            ],
          ),
        ),
      ),
    );
  }
}
