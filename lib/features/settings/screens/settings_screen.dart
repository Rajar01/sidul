import 'package:flutter/material.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      appBar: AppBar(
        leading: const BackButtonIcon(),
        title: const Text("Pengaturan"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
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
            const SizedBox(height: 8),
            Text(
              "Lucas Scott",
              style: theme.textTheme.titleLarge,
            ),
            const SizedBox(height: 2),
            Text(
              "@lucasscott3",
              style: theme.textTheme.bodyMedium,
            ),
            const SizedBox(height: 16),
            Container(
              alignment: Alignment.centerLeft,
              padding: const EdgeInsets.symmetric(vertical: 16),
              child: Text(
                "Informasi Pribadi",
                style: theme.textTheme.bodyLarge,
              ),
            ),
            const Divider(height: 0.5),
            Container(
              alignment: Alignment.centerLeft,
              padding: const EdgeInsets.symmetric(vertical: 16),
              child: Text(
                "Pemberitahuan",
                style: theme.textTheme.bodyLarge,
              ),
            ),
            const Divider(height: 0.5),
            Container(
              alignment: Alignment.centerLeft,
              padding: const EdgeInsets.symmetric(vertical: 16),
              child: Text(
                "Jurusan Pilihan Anda",
                style: theme.textTheme.bodyLarge,
              ),
            ),
            const Divider(height: 0.5),
            Container(
              padding: const EdgeInsets.symmetric(vertical: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Text(
                      "Bahasa",
                      style: theme.textTheme.bodyLarge,
                    ),
                  ),
                  const SizedBox(width: 8),
                  Text(
                    "Indonesia (ID)",
                    style: theme.textTheme.bodyMedium,
                  ),
                ],
              ),
            ),
            const Divider(height: 0.5),
            Container(
              padding: const EdgeInsets.symmetric(vertical: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Mode Gelap",
                    style: theme.textTheme.bodyLarge,
                  ),
                  FittedBox(
                    fit: BoxFit.fill,
                    child: Switch(
                      value: false,
                      onChanged: (_) {},
                    ),
                  ),
                ],
              ),
            ),
            const Divider(height: 0.5),
            GestureDetector(
              onTap: () {
                showAboutDialog(
                  context: context,
                  applicationName: "Sistem Informasi Modul (Sidul)",
                  applicationVersion: "v1.0.0",
                  applicationLegalese:
                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit."
                      " Vestibulum at suscipit ipsum. Nulla iaculis in"
                      " quam ultrices porta. Etiam sed massa commodo,"
                      " placerat velit tempor, varius lectus. Duis eu nunc blandit, "
                      "blandit quam vel, malesuada mauris. Nullam quis ante sit amet "
                      "arcu tristique porttitor. Nulla facilisi. Morbi elit nibh, placerat"
                      " nec ante ut, pulvinar malesuada nisl. Aliquam erat volutpat. Aenean "
                      "eget risus at urna egestas feugiat.",
                );
              },
              child: Container(
                alignment: Alignment.centerLeft,
                padding: const EdgeInsets.symmetric(vertical: 16),
                child: Text(
                  "Tentang",
                  style: theme.textTheme.bodyLarge,
                ),
              ),
            ),
            const Divider(height: 0.5),
            Container(
              alignment: Alignment.centerLeft,
              padding: const EdgeInsets.symmetric(vertical: 16),
              child: Text(
                "Keluar",
                style: theme.textTheme.bodyLarge,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
