import 'package:flutter/material.dart';

class LanguageSettings extends StatefulWidget {
  const LanguageSettings({super.key});

  @override
  State<LanguageSettings> createState() => _LanguageSettingsState();
}

class _LanguageSettingsState extends State<LanguageSettings> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      appBar: AppBar(
        leading: const BackButtonIcon(),
        title: const Text("Bahasa"),
        scrolledUnderElevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              "Rekomendasi",
              style: theme.textTheme.titleSmall,
            ),
            const SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Indonesia",
                  style: theme.textTheme.bodyLarge,
                ),
                Radio(
                  value: "value",
                  groupValue: "groupValue",
                  onChanged: (_) {},
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Inggris",
                  style: theme.textTheme.bodyLarge,
                ),
                Radio(
                  value: "value",
                  groupValue: "groupValue",
                  onChanged: (_) {},
                ),
              ],
            ),
            Container(
              padding: const EdgeInsets.symmetric(vertical: 16),
              child: const Divider(height: 0.5),
            ),
            Text(
              "Bahasa",
              style: theme.textTheme.titleSmall,
            ),
            const SizedBox(height: 8),
            Expanded(
              child: ListView.separated(
                itemBuilder: (context, index) => Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Inggris",
                      style: theme.textTheme.bodyLarge,
                    ),
                    Radio(
                      value: "value",
                      groupValue: "groupValue",
                      onChanged: (_) {},
                    ),
                  ],
                ),
                separatorBuilder: (context, index) => const SizedBox(height: 4),
                itemCount: 12,
              ),
            )
          ],
        ),
      ),
    );
  }
}
