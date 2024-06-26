import 'package:flutter/material.dart';

// TODO implement scroll view so that content does not get overflow when keyboard appear
class CompleteProfileScreen extends StatefulWidget {
  const CompleteProfileScreen({super.key});

  @override
  State<CompleteProfileScreen> createState() => _CompleteProfileScreenState();
}

class _CompleteProfileScreenState extends State<CompleteProfileScreen> {
  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final colorScheme = Theme.of(context).colorScheme;

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
                  value: 1,
                  minHeight: 16,
                  borderRadius:
                      const BorderRadius.all(Radius.circular(16)),
                  valueColor: AlwaysStoppedAnimation(colorScheme.primary),
                ),
                const SizedBox(height: 32),
                Text(
                  "Lengkapi data profil kamu!",
                  style: textTheme.titleLarge,
                  textAlign: TextAlign.center,
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
                          fillColor: Colors.white,
                          shape: const CircleBorder(),
                          child: Icon(
                            Icons.camera_alt,
                            color: colorScheme.primary,
                            size: 16,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 32),
                Column(
                  children: [
                    TextFormField(
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: "Nama Lengkap",
                      ),
                    ),
                    const SizedBox(height: 16),
                    TextFormField(
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: "Nomor Telepon",
                      ),
                    ),
                    const SizedBox(height: 16),
                    InputDatePickerFormField(
                      firstDate: DateTime(1900),
                      lastDate: DateTime(2100),
                      fieldLabelText: "Tanggal Lahir",
                    ),
                    const SizedBox(height: 16),
                    TextFormField(
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: "Negara",
                      ),
                    ),
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
