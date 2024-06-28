import 'package:flutter/material.dart';

class ModuleChatWithAIScreen extends StatefulWidget {
  const ModuleChatWithAIScreen({super.key});

  @override
  State<ModuleChatWithAIScreen> createState() => _ModuleChatWithAIScreenState();
}

class _ModuleChatWithAIScreenState extends State<ModuleChatWithAIScreen> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      appBar: AppBar(
        scrolledUnderElevation: 0,
        leading: BackButtonIcon(),
        title: Text(
          "Asisten AI",
          overflow: TextOverflow.ellipsis,
          maxLines: 1,
        ),
      ),
      bottomNavigationBar: Container(
        padding: EdgeInsets.only(
          left: 16,
          right: 16,
          top: 16,
          bottom: MediaQuery.of(context).viewInsets.bottom + 16,
        ),
        child: Row(
          children: [
            Expanded(
              child: TextField(
                decoration: InputDecoration(
                  hintText: "Ketik pesan",
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            const SizedBox(width: 12),
            FilledButton(
              onPressed: () {},
              style: FilledButton.styleFrom(
                  shape: CircleBorder(), padding: EdgeInsets.all(20)),
              child: const Icon(Icons.send),
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: ListView(
          shrinkWrap: true,
          children: [
            Align(
              alignment: Alignment.centerRight,
              child: Container(
                decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  color: theme.colorScheme.primary,
                  borderRadius: BorderRadius.all(
                    Radius.circular(4),
                  ),
                ),
                padding: EdgeInsets.all(16),
                child: Text(
                  "What is Lorem Ipsum?",
                  style: theme.textTheme.bodyMedium!.copyWith(
                    color: theme.colorScheme.onPrimary,
                  ),
                ),
              ),
            ),
            SizedBox(height: 16),
            Container(
              decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                color: theme.colorScheme.primaryContainer,
                borderRadius: BorderRadius.all(
                  Radius.circular(4),
                ),
              ),
              padding: EdgeInsets.all(16),
              child: Text(
                "Lorem Ipsum is simply dummy text of the printing and typesetting industry. "
                "Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, "
                "when an unknown printer took a galley of type and scrambled it to make a "
                "type specimen book. It has survived not only five centuries, but also "
                "the leap into electronic typesetting, remaining essentially unchanged. "
                "It was popularised in the 1960s with the release of Letraset "
                "sheets containing Lorem Ipsum passages, and more recently with desktop "
                "publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
                style: theme.textTheme.bodyMedium!.copyWith(
                  color: theme.colorScheme.onPrimaryContainer,
                ),
              ),
            ),
            SizedBox(height: 16),
            Align(
              alignment: Alignment.centerRight,
              child: Container(
                decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  color: theme.colorScheme.primary,
                  borderRadius: BorderRadius.all(
                    Radius.circular(4),
                  ),
                ),
                padding: EdgeInsets.all(16),
                child: Text(
                  "What is Lorem Ipsum?",
                  style: theme.textTheme.bodyMedium!.copyWith(
                    color: theme.colorScheme.onPrimary,
                  ),
                ),
              ),
            ),
            SizedBox(height: 16),
            Container(
              decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                color: theme.colorScheme.primaryContainer,
                borderRadius: BorderRadius.all(
                  Radius.circular(4),
                ),
              ),
              padding: EdgeInsets.all(16),
              child: Text(
                "Lorem Ipsum is simply dummy text of the printing and typesetting industry. "
                "Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, "
                "when an unknown printer took a galley of type and scrambled it to make a "
                "type specimen book. It has survived not only five centuries, but also "
                "the leap into electronic typesetting, remaining essentially unchanged. "
                "It was popularised in the 1960s with the release of Letraset "
                "sheets containing Lorem Ipsum passages, and more recently with desktop "
                "publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
                style: theme.textTheme.bodyMedium!.copyWith(
                  color: theme.colorScheme.onPrimaryContainer,
                ),
              ),
            ),
            SizedBox(height: 16),
            Align(
              alignment: Alignment.centerRight,
              child: Container(
                decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  color: theme.colorScheme.primary,
                  borderRadius: BorderRadius.all(
                    Radius.circular(4),
                  ),
                ),
                padding: EdgeInsets.all(16),
                child: Text(
                  "What is Lorem Ipsum?",
                  style: theme.textTheme.bodyMedium!.copyWith(
                    color: theme.colorScheme.onPrimary,
                  ),
                ),
              ),
            ),
            SizedBox(height: 16),
            Container(
              decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                color: theme.colorScheme.primaryContainer,
                borderRadius: BorderRadius.all(
                  Radius.circular(4),
                ),
              ),
              padding: EdgeInsets.all(16),
              child: Text(
                "Lorem Ipsum is simply dummy text of the printing and typesetting industry. "
                    "Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, "
                    "when an unknown printer took a galley of type and scrambled it to make a "
                    "type specimen book. It has survived not only five centuries, but also "
                    "the leap into electronic typesetting, remaining essentially unchanged. "
                    "It was popularised in the 1960s with the release of Letraset "
                    "sheets containing Lorem Ipsum passages, and more recently with desktop "
                    "publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
                style: theme.textTheme.bodyMedium!.copyWith(
                  color: theme.colorScheme.onPrimaryContainer,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
