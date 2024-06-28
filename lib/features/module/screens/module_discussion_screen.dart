import 'package:flutter/material.dart';

class ModuleDiscussionScreen extends StatefulWidget {
  const ModuleDiscussionScreen({super.key});

  @override
  State<ModuleDiscussionScreen> createState() => _ModuleDiscussionScreenState();
}

class _ModuleDiscussionScreenState extends State<ModuleDiscussionScreen> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      appBar: AppBar(
        scrolledUnderElevation: 0,
        leading: BackButtonIcon(),
        title: Text(
          "Valorant Guide To Radiant : Best Guide 2024",
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
        child: ListView.separated(
          itemCount: 12,
          separatorBuilder: (context, index) => SizedBox(height: 12),
          itemBuilder: (context, index) => Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CircleAvatar(),
              SizedBox(width: 12),
              Expanded(
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Muhammad Daffa Febriyan_4B",
                          style: theme.textTheme.labelLarge,
                        ),
                        SizedBox(width: 4),
                        Text(
                          "30 May 2024",
                          style: theme.textTheme.bodySmall,
                        ),
                      ],
                    ),
                    SizedBox(height: 4),
                    Text(
                      "Lorem ipsum dolor sit amet, consectetur "
                      "adipiscing elit. Nulla viverra sollicitudin arcu a vulputate.",
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
