import 'dart:developer' as developer;
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:loader_overlay/loader_overlay.dart';
import 'package:sidul/features/auth/providers/login_notifier_provider.dart';
import 'package:sidul/features/auth/screens/forgot_password_screen.dart';
import 'package:sidul/features/auth/screens/register_screen.dart';
import 'package:sidul/features/module/screens/home_screen.dart';
import 'package:sidul/shared/providers/app_state_provider.dart';

class LoginScreen extends ConsumerWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.watch(loginNotifierProvider);

    final theme = Theme.of(context);
    final appState = ref.watch(appStateProvider);

    return SafeArea(
      child: LoaderOverlay(
        child: Scaffold(
          body: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  "assets/images/logo.png",
                  width: 148,
                  height: 84,
                ),
                const SizedBox(height: 32),
                TextFormField(
                  onChanged: (value) => ref
                      .read(loginNotifierProvider.notifier)
                      .usernameFieldOnChange(value),
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    label: Text("Username"),
                  ),
                ),
                const SizedBox(height: 12),
                TextFormField(
                  onChanged: (value) => ref
                      .read(loginNotifierProvider.notifier)
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
                                name: "sidul.login-screen");
                          } else {
                            ref.read(appStateProvider.notifier).showPassword();
                            developer.log("Show Password",
                                name: "sidul.login-screen");
                          }
                        }
                      },
                      child: appState["isPasswordFieldVisible"]
                          ? const Icon(Icons.visibility)
                          : const Icon(Icons.visibility_off),
                    ),
                  ),
                ),
                const SizedBox(height: 4),
                GestureDetector(
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const ForgotPasswordScreen(),
                    ),
                  ),
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      "Lupa password ?",
                      style: theme.textTheme.bodyMedium!.copyWith(
                        color: theme.colorScheme.primary,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                SizedBox(
                  width: double.infinity,
                  child: FilledButton(
                    onPressed: () async {
                      context.loaderOverlay.show();

                      final response = await ref
                          .read(loginNotifierProvider.notifier)
                          .onLoginButtonClicked()
                          .whenComplete(
                            () => context.loaderOverlay.hide(),
                          );

                      if (response.statusCode == HttpStatus.ok) {
                        Navigator.pushAndRemoveUntil(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const HomeScreen(),
                          ),
                          (Route<dynamic> route) => false,
                        );
                      } else {
                        const snackBar = SnackBar(
                          content: Text(
                            'Gagal masuk dikarenakan kredensial tidak valid',
                          ),
                          showCloseIcon: true,
                        );

                        ScaffoldMessenger.of(context).showSnackBar(snackBar);
                      }
                    },
                    child: const Text("Masuk"),
                  ),
                ),
                const SizedBox(height: 4),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Tidak punya akun ? ",
                      style: theme.textTheme.bodyMedium,
                    ),
                    GestureDetector(
                      onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const RegisterScreen(),
                        ),
                      ),
                      child: Text(
                        "Daftar",
                        style: theme.textTheme.bodyMedium!.copyWith(
                          color: theme.colorScheme.primary,
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
