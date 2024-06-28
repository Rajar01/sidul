import 'package:flutter/material.dart';

class ModuleReviewScreen extends StatefulWidget {
  const ModuleReviewScreen({super.key});

  @override
  State<ModuleReviewScreen> createState() => _ModuleReviewScreenState();
}

class _ModuleReviewScreenState extends State<ModuleReviewScreen> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      appBar: AppBar(
        scrolledUnderElevation: 0,
        leading: const BackButtonIcon(),
        title: const Text("Skor & Ulasan"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            IntrinsicHeight(
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "4.5",
                          style: theme.textTheme.headlineLarge,
                        ),
                        const SizedBox(height: 8),
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.star),
                            Icon(Icons.star),
                            Icon(Icons.star),
                            Icon(Icons.star),
                            Icon(Icons.star),
                          ],
                        ),
                        const SizedBox(height: 8),
                        const Text("(6.8k Ulasan)"),
                      ],
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    child: VerticalDivider(width: 0.5),
                  ),
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          children: [
                            Text(
                              "1",
                              style: theme.textTheme.bodyLarge,
                            ),
                            const SizedBox(width: 8),
                            Expanded(
                              child: LinearProgressIndicator(
                                value: 0.8,
                                minHeight: 4,
                                borderRadius: const BorderRadius.all(
                                  Radius.circular(16),
                                ),
                                valueColor: AlwaysStoppedAnimation(
                                  theme.colorScheme.primary,
                                ),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Text(
                              "2",
                              style: theme.textTheme.bodyLarge,
                            ),
                            const SizedBox(width: 8),
                            Expanded(
                              child: LinearProgressIndicator(
                                value: 0.8,
                                minHeight: 4,
                                borderRadius: const BorderRadius.all(
                                  Radius.circular(16),
                                ),
                                valueColor: AlwaysStoppedAnimation(
                                  theme.colorScheme.primary,
                                ),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Text(
                              "3",
                              style: theme.textTheme.bodyLarge,
                            ),
                            const SizedBox(width: 8),
                            Expanded(
                              child: LinearProgressIndicator(
                                value: 0.8,
                                minHeight: 4,
                                borderRadius: const BorderRadius.all(
                                  Radius.circular(16),
                                ),
                                valueColor: AlwaysStoppedAnimation(
                                  theme.colorScheme.primary,
                                ),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Text(
                              "4",
                              style: theme.textTheme.bodyLarge,
                            ),
                            const SizedBox(width: 8),
                            Expanded(
                              child: LinearProgressIndicator(
                                value: 0.8,
                                minHeight: 4,
                                borderRadius: const BorderRadius.all(
                                  Radius.circular(16),
                                ),
                                valueColor: AlwaysStoppedAnimation(
                                  theme.colorScheme.primary,
                                ),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Text(
                              "5",
                              style: theme.textTheme.bodyLarge,
                            ),
                            const SizedBox(width: 8),
                            Expanded(
                              child: LinearProgressIndicator(
                                value: 0.8,
                                minHeight: 4,
                                borderRadius: const BorderRadius.all(
                                  Radius.circular(16),
                                ),
                                valueColor: AlwaysStoppedAnimation(
                                  theme.colorScheme.primary,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16),
            const SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Wrap(
                direction: Axis.horizontal,
                spacing: 8,
                children: [
                  ChoiceChip(
                    label: Text("Semua"),
                    selected: true,
                    avatar: Icon(Icons.star),
                  ),
                  ChoiceChip(
                    label: Text("5"),
                    selected: true,
                    avatar: Icon(Icons.star),
                  ),
                  ChoiceChip(
                    label: Text("4"),
                    selected: true,
                    avatar: Icon(Icons.star),
                  ),
                  ChoiceChip(
                    label: Text("3"),
                    selected: true,
                    avatar: Icon(Icons.star),
                  ),
                  ChoiceChip(
                    label: Text("2"),
                    selected: true,
                    avatar: Icon(Icons.star),
                  ),
                  ChoiceChip(
                    label: Text("1"),
                    selected: true,
                    avatar: Icon(Icons.star),
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 16),
              child: Divider(height: 0.5),
            ),
            Expanded(
              child: ListView.separated(
                itemCount: 15,
                separatorBuilder: (context, index) => const SizedBox(height: 16),
                itemBuilder: (context, index) => Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            const CircleAvatar(),
                            const SizedBox(width: 8),
                            Text(
                              "Something",
                              style: theme.textTheme.titleMedium,
                            ),
                          ],
                        ),
                        Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 8, vertical: 4),
                          decoration: BoxDecoration(
                              color: theme.colorScheme.primaryContainer,
                              borderRadius: const BorderRadius.all(
                                Radius.circular(4),
                              )),
                          child: Row(
                            children: [
                              Icon(
                                Icons.star,
                                color: theme.colorScheme.primary,
                              ),
                              const SizedBox(width: 4),
                              const Text("5"),
                            ],
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 8),
                    const Text(
                      "Lorem ipsum dolor sit amet, consectetur adipiscing "
                      "elit. Nulla viverra sollicitudin arcu a vulputate.",
                    ),
                    const SizedBox(height: 8),
                    Text(
                      "5 bulan lalu",
                      style: theme.textTheme.bodyMedium!.copyWith(
                        color: theme.colorScheme.primary,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
