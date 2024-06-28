import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ModuleScreen extends StatefulWidget {
  const ModuleScreen({super.key});

  @override
  State<ModuleScreen> createState() => _ModuleScreenState();
}

class _ModuleScreenState extends State<ModuleScreen> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      appBar: AppBar(
        scrolledUnderElevation: 0,
        leading: const BackButtonIcon(),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.chat),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.more_vert),
          ),
        ],
      ),
      bottomNavigationBar: Container(
        padding: const EdgeInsets.all(16),
        child: Row(
          children: [
            Expanded(
              child: FilledButton(
                onPressed: () {},
                child: const Text("Unduh"),
              ),
            ),
            const SizedBox(width: 12),
            FilledButton(
              onPressed: () {},
              child: const Text("Asisten AI"),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            ClipRRect(
              borderRadius: const BorderRadius.all(
                Radius.circular(4.0),
              ),
              child: Image.asset(
                "assets/images/book_cover_1.jpeg",
                width: 112,
                height: 160,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              "Valorant Guide To Radiant",
              style: theme.textTheme.titleLarge,
            ),
            const SizedBox(height: 2),
            Text(
              "Dzauqi Legend",
              style: theme.textTheme.bodyLarge,
            ),
            const SizedBox(height: 8),
            Container(
              decoration: BoxDecoration(
                color: theme.colorScheme.primaryContainer,
                borderRadius: const BorderRadius.all(
                  Radius.circular(4),
                ),
              ),
              padding: const EdgeInsets.all(12),
              child: IntrinsicHeight(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Column(
                        children: [
                          Text(
                            "Skor",
                            style: theme.textTheme.bodyMedium!.copyWith(
                              color: theme.colorScheme.primary,
                            ),
                          ),
                          const SizedBox(height: 4),
                          const Text("4.5"),
                        ],
                      ),
                    ),
                    const VerticalDivider(width: 0.5),
                    Expanded(
                      child: Column(
                        children: [
                          Text(
                            "Halaman",
                            style: theme.textTheme.bodyMedium!.copyWith(
                              color: theme.colorScheme.primary,
                            ),
                          ),
                          const SizedBox(height: 4),
                          const Text("550"),
                        ],
                      ),
                    ),
                    const VerticalDivider(width: 0.5),
                    Expanded(
                      child: Column(
                        children: [
                          Text(
                            "Diunduh",
                            style: theme.textTheme.bodyMedium!.copyWith(
                              color: theme.colorScheme.primary,
                            ),
                          ),
                          const SizedBox(height: 4),
                          const Text("10k"),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Tentang",
                  style: theme.textTheme.titleMedium,
                ),
                const Icon(Icons.arrow_forward),
              ],
            ),
            const SizedBox(height: 12),
            const Text(
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit. "
              "Nulla viverra sollicitudin arcu a vulputate. "
              "Donec fermentum magna ut facilisis egestas. "
              "Sed eleifend elit et dolor hendrerit, vel "
              "laoreet urna imperdiet. Vestibulum dui orci, laoreet "
              "et arcu eu, commodo laoreet enim. Suspendisse finibus urna"
              " luctus commodo convallis. Nam neque felis, auctor ut mollis"
              " sed, iaculis ac mi. Phasellus commodo nulla odio, vitae "
              "malesuada elit vestibulum ac. Maecenas in turpis blandit nulla"
              " condimentum luctus. Sed lectus dui, ornare ac semper tincidunt, "
              "accumsan non neque. Etiam eu purus tellus. In in dolor id ipsum "
              "convallis rutrum quis nec metus. Etiam elementum neque at libero "
              "tristique, in consectetur nibh placerat.",
              maxLines: 10,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.justify,
            ),
            const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Skor & Ulasan",
                  style: theme.textTheme.titleMedium,
                ),
                const Icon(Icons.arrow_forward),
              ],
            ),
            const SizedBox(height: 12),
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
            const SizedBox(height: 28),
            Text(
              "Beri Rating Modul Ini",
              style: theme.textTheme.titleMedium,
            ),
            const SizedBox(height: 12),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.star_border_outlined, size: 36),
                SizedBox(width: 4),
                Icon(Icons.star_border_outlined, size: 36),
                SizedBox(width: 4),
                Icon(Icons.star_border_outlined, size: 36),
                SizedBox(width: 4),
                Icon(Icons.star_border_outlined, size: 36),
                SizedBox(width: 4),
                Icon(Icons.star_border_outlined, size: 36),
              ],
            ),
            const SizedBox(height: 12),
            OutlinedButton(
              onPressed: () {},
              child: const Text("Tulis Ulasan"),
            ),
          ],
        ),
      ),
    );
  }
}
