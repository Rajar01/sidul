import 'package:flutter/material.dart';

class EnterReviewScreen extends StatefulWidget {
  const EnterReviewScreen({super.key});

  @override
  State<EnterReviewScreen> createState() => _EnterReviewScreenState();
}

class _EnterReviewScreenState extends State<EnterReviewScreen> {
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
              child: OutlinedButton(
                onPressed: () {},
                child: const Text("Batal"),
              ),
            ),
            const SizedBox(width: 12),
            Expanded(
              child: FilledButton(
                onPressed: () {},
                child: const Text("Kirim"),
              ),
            ),
          ],
        ),
      ),
      body: LayoutBuilder(
        builder: (context, constraints) => SingleChildScrollView(
          padding: const EdgeInsets.all(16),
          child: IntrinsicHeight(
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
                const SizedBox(
                  height: 200,
                  child: TextField(
                    maxLines: 10,
                    decoration: InputDecoration(
                      hintText: "Masukkan ulasan Anda",
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
