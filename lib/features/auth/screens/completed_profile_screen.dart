import 'dart:developer' as developer;

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:loader_overlay/loader_overlay.dart';
import 'package:sidul/features/auth/providers/register_notifier_provider.dart';
import 'package:sidul/features/auth/screens/success_create_account_screen.dart';

class CompleteYourProfileScreen extends ConsumerWidget {
  const CompleteYourProfileScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.watch(registerNotifierProvider);

    final theme = Theme.of(context);

    return SafeArea(
      child: LoaderOverlay(
        child: Scaffold(
          resizeToAvoidBottomInset: false,
          body: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              children: [
                Column(
                  children: [
                    LinearProgressIndicator(
                      value: 1,
                      minHeight: 16,
                      borderRadius: const BorderRadius.all(Radius.circular(16)),
                      valueColor:
                          AlwaysStoppedAnimation(theme.colorScheme.primary),
                    ),
                    const SizedBox(height: 16),
                    Text(
                      "Lengkapi data profil kamu",
                      style: theme.textTheme.headlineSmall,
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 24),
                    SizedBox(
                      height: 128,
                      width: 128,
                      child: Stack(
                        clipBehavior: Clip.none,
                        fit: StackFit.expand,
                        children: [
                          const CircleAvatar(radius: 64),
                          Positioned(
                            bottom: -8,
                            right: -4,
                            child: RawMaterialButton(
                              constraints: const BoxConstraints(
                                minWidth: 32,
                                maxWidth: 32,
                                minHeight: 32,
                                maxHeight: 32,
                              ),
                              onPressed: () {},
                              elevation: 2.0,
                              fillColor: Colors.white,
                              shape: const CircleBorder(),
                              child: GestureDetector(
                                onTap: () async {},
                                child: Icon(
                                  Icons.camera_alt,
                                  color: theme.colorScheme.primary,
                                  size: 16,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 24),
                    TextFormField(
                      initialValue: ref.read(registerNotifierProvider).fullName,
                      onChanged: (value) => ref
                          .read(registerNotifierProvider.notifier)
                          .fullNameFieldOnChange(value),
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        label: Text("Nama Lengkap"),
                      ),
                    ),
                    const SizedBox(height: 12),
                    TextFormField(
                      initialValue:
                          ref.read(registerNotifierProvider).phoneNumber,
                      onChanged: (value) => ref
                          .read(registerNotifierProvider.notifier)
                          .phoneNumberFieldOnChange(value),
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        label: Text("Nomor Handphone"),
                      ),
                    ),
                    const SizedBox(height: 12),
                    InputDatePickerFormField(
                      initialDate: ref.read(registerNotifierProvider).dob,
                      onDateSubmitted: (value) => ref
                          .read(registerNotifierProvider.notifier)
                          .onDobSubmitted(value),
                      fieldLabelText: "Tanggal Lahir",
                      firstDate: DateTime(1900),
                      lastDate: DateTime(2100),
                    ),
                  ],
                ),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      SizedBox(
                        width: double.infinity,
                        child: FilledButton(
                          onPressed: () async {
                            context.loaderOverlay.show();

                            final response = await ref
                                .read(registerNotifierProvider.notifier)
                                .onSubmitRegistration()
                                .whenComplete(
                                  () => context.loaderOverlay.hide(),
                                );

                            if (response["status"] == "SUCCESS") {
                              Navigator.pushAndRemoveUntil(
                                context,
                                MaterialPageRoute(
                                  builder: (context) =>
                                      const SuccessCreateAccountScreen(),
                                ),
                                (Route<dynamic> route) => false,
                              );
                            } else {
                              final snackBar = SnackBar(
                                content: Text(
                                  'Gagal melakukan pendaftaran! dikarenakan ${response["data"]["token"]}',
                                ),
                                showCloseIcon: true,
                              );

                              ScaffoldMessenger.of(context)
                                  .showSnackBar(snackBar);
                            }
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
                            developer
                                .inspect(ref.read(registerNotifierProvider));
                          },
                          child: const Text("Kembali"),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
