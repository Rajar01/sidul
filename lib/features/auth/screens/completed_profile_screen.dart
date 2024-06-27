import 'package:flutter/material.dart';

class CompleteYourProfileScreen extends StatefulWidget {
  const CompleteYourProfileScreen({super.key});

  @override
  State<CompleteYourProfileScreen> createState() =>
      _CompleteYourProfileScreenState();
}

class _CompleteYourProfileScreenState extends State<CompleteYourProfileScreen> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
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
                  borderRadius:
                      const BorderRadius.all(Radius.circular(16)),
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
                      CircleAvatar(radius: 64),
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
                            color: theme.colorScheme.primary,
                            size: 16,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 24),
                TextFormField(
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    label: Text("Nama Lengkap"),
                  ),
                ),
                SizedBox(height: 12),
                TextFormField(
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    label: Text("Nomor Handphone"),
                  ),
                ),
                SizedBox(height: 12),
                InputDatePickerFormField(
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
                      onPressed: () {},
                      child: const Text("Lanjutkan"),
                    ),
                  ),
                  const SizedBox(height: 4),
                  SizedBox(
                    width: double.infinity,
                    child: TextButton(
                      onPressed: () {},
                      child: const Text("Kembali"),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
