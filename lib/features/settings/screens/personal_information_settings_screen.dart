import 'package:flutter/material.dart';

class PersonalInformationSettingsScreen extends StatefulWidget {
  const PersonalInformationSettingsScreen({super.key});

  @override
  State<PersonalInformationSettingsScreen> createState() =>
      _PersonalInformationSettingsScreenState();
}

class _PersonalInformationSettingsScreenState
    extends State<PersonalInformationSettingsScreen> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        leading: const BackButtonIcon(),
        title: const Text("Informasi Pribadi"),
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
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
            SizedBox(height: 28),
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
                label: Text("Username"),
              ),
            ),
            SizedBox(height: 12),
            TextFormField(
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                label: Text("Email"),
              ),
              readOnly: true,
              canRequestFocus: false,
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
            Expanded(child: Container()),
            SizedBox(
              width: double.infinity,
              child: Row(
                children: [
                  Expanded(
                    child: OutlinedButton(
                      onPressed: () {},
                      child: const Text("Batal"),
                    ),
                  ),
                  SizedBox(width: 8),
                  Expanded(
                    child: FilledButton(
                      onPressed: () {},
                      child: const Text("Simpan"),
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
