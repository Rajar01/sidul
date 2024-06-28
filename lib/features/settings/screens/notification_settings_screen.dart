import 'package:flutter/material.dart';

class NotificationSettingsScreen extends StatefulWidget {
  const NotificationSettingsScreen({super.key});

  @override
  State<NotificationSettingsScreen> createState() =>
      _NotificationSettingsScreenState();
}

class _NotificationSettingsScreenState
    extends State<NotificationSettingsScreen> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      appBar: AppBar(
        leading: const BackButtonIcon(),
        title: const Text("Pengaturan Pemberitahuan"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              "Beri tahu saya saat ...",
              style: theme.textTheme.titleSmall,
            ),
            const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Lorem ipsum dolor sit amet",
                  style: theme.textTheme.bodyLarge,
                ),
                Switch(
                  value: false,
                  onChanged: (_) {},
                )
              ],
            ),
            const SizedBox(height: 12),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Consectetur adipiscing elit",
                  style: theme.textTheme.bodyLarge,
                ),
                Switch(
                  value: false,
                  onChanged: (_) {},
                )
              ],
            ),
            const SizedBox(height: 12),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Vestibulum at suscipit ipsum",
                  style: theme.textTheme.bodyLarge,
                ),
                Switch(
                  value: false,
                  onChanged: (_) {},
                )
              ],
            ),
            const SizedBox(height: 12),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Nulla iaculis in quam ultrices porta",
                  style: theme.textTheme.bodyLarge,
                ),
                Switch(
                  value: false,
                  onChanged: (_) {},
                )
              ],
            ),
            const SizedBox(height: 12),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Etiam sed massa commodo",
                  style: theme.textTheme.bodyLarge,
                ),
                Switch(
                  value: false,
                  onChanged: (_) {},
                )
              ],
            ),
            const SizedBox(height: 12),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Morbi sit amet massa",
                  style: theme.textTheme.bodyLarge,
                ),
                Switch(
                  value: false,
                  onChanged: (_) {},
                )
              ],
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
                  const SizedBox(width: 8),
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
