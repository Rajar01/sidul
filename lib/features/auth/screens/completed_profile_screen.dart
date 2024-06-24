import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sidul/features/auth/providers/register_notifier_provider.dart';
import 'package:sidul/shared/widgets/button_widget.dart';
import 'package:sidul/shared/widgets/date_field_widget.dart';
import 'package:sidul/shared/widgets/dropdown_button_widget.dart';
import 'package:sidul/shared/widgets/input_field_widget.dart';

class CompletedProfileScreen extends ConsumerStatefulWidget {
  const CompletedProfileScreen({super.key});

  @override
  ConsumerState<CompletedProfileScreen> createState() =>
      _CompletedProfileScreenState();
}

class _CompletedProfileScreenState
    extends ConsumerState<CompletedProfileScreen> {
  final TextEditingController dobFieldController =
      TextEditingController(text: DateTime.now().toString().split(" ")[0]);
  final countries = <String>[
    "Indonesia",
    "Inggris",
    "Belanda",
  ];

  @override
  Widget build(BuildContext context) {
    final dob = ref.watch(registerNotifierProvider).dob;
    final country = ref.watch(registerNotifierProvider).country;

    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(32),
          child: Column(
            children: [
              const LinearProgressIndicator(
                value: 1,
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
                      "Lengkapi data profil kamu",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: "Inter",
                        fontWeight: FontWeight.w900,
                        fontSize: 24,
                      ),
                    ),
                    const SizedBox(height: 32),
                    SizedBox(
                      width: 96,
                      height: 96,
                      child: Stack(
                        clipBehavior: Clip.none,
                        fit: StackFit.expand,
                        children: [
                          const CircleAvatar(),
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
                              fillColor: const Color(0xFFF5F6F9),
                              shape: const CircleBorder(),
                              child: const Icon(
                                Icons.camera_alt,
                                color: Colors.blue,
                                size: 16,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 32),
                    HATextField(
                      title: "Nama Lengkap",
                      onChanged: ref
                          .read(registerNotifierProvider.notifier)
                          .fullNameFieldOnChange,
                    ),
                    const SizedBox(height: 16),
                    HATextField(
                      title: "Nomor Telepon",
                      onChanged: ref
                          .read(registerNotifierProvider.notifier)
                          .phoneNumberFieldOnChange,
                    ),
                    const SizedBox(height: 16),
                    HADateField(
                      title: "Tanggal Lahir",
                      dateFieldController: dobFieldController,
                      onTap: () {
                        ref
                            .read(registerNotifierProvider.notifier)
                            .dobFieldOnTap(context, dobFieldController);
                      },
                    ),
                    const SizedBox(height: 16),
                    HADropdownButton(
                      title: "Negara",
                      items: countries,
                      onChanged: (value) => ref
                          .read(registerNotifierProvider.notifier)
                          .onCountryChanged(value!),
                      value: country.isEmpty ? countries.first : country,
                    ),
                  ],
                ),
              ),
              Column(
                children: [
                  HAButton(
                    text: "Lanjutkan",
                    onPressed: () {},
                  ),
                  const SizedBox(height: 8),
                  HAButton(
                    text: "Kembali",
                    onPressed: () {},
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
