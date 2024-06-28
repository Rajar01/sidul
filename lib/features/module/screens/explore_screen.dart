import 'package:flutter/material.dart';

class ExploreScreen extends StatefulWidget {
  const ExploreScreen({super.key});

  @override
  State<ExploreScreen> createState() => _ExploreScreenState();
}

class _ExploreScreenState extends State<ExploreScreen> {
  final categories = <String>[
    "Sastra Lama",
    "Matematika",
    "Pemrograman Mobile",
    "Desain Web",
    "Bahasa Indonesia",
    "Bahasa Inggris",
    "Pemrograman Dasar",
    "Kebudayaan",
  ];

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      appBar: AppBar(
        title: Text("Ekplorasi"),
        scrolledUnderElevation: 0,
      ),
      bottomNavigationBar: NavigationBar(
        surfaceTintColor: theme.colorScheme.onPrimary,
        height: 72,
        indicatorColor: theme.colorScheme.primary,
        selectedIndex: 1,
        destinations: [
          NavigationDestination(
            selectedIcon: Icon(
              Icons.home_filled,
              color: theme.colorScheme.onPrimary,
            ),
            icon: const Icon(Icons.home_filled),
            label: "Beranda",
          ),
          NavigationDestination(
            selectedIcon: Icon(
              Icons.explore,
              color: theme.colorScheme.onPrimary,
            ),
            icon: Icon(Icons.explore),
            label: "Eksplorasi",
          ),
          NavigationDestination(
            selectedIcon: Icon(
              Icons.bookmark,
              color: theme.colorScheme.onPrimary,
            ),
            icon: Icon(Icons.bookmark),
            label: "Bookmark",
          ),
          NavigationDestination(
            selectedIcon: Icon(
              Icons.cloud_download,
              color: theme.colorScheme.onPrimary,
            ),
            icon: Icon(Icons.cloud_download),
            label: "Unduhan",
          )
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Column(
                children: [
                  GestureDetector(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Modul Teratas",
                          style: theme.textTheme.titleMedium,
                        ),
                        const Icon(Icons.arrow_forward),
                      ],
                    ),
                  ),
                  const SizedBox(height: 12),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Wrap(
                      spacing: 16,
                      direction: Axis.horizontal,
                      children: List.generate(
                        11,
                        (index) => SizedBox(
                          height: 296,
                          width: 156,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Expanded(
                                child: ClipRRect(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(4.0)),
                                  child: Image(
                                    fit: BoxFit.fill,
                                    image: AssetImage(
                                      "assets/images/book_cover_1.jpeg",
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(height: 8),
                              Text(
                                "Valorant Guide To Radiant",
                                style: theme.textTheme.titleMedium,
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                              ),
                              const SizedBox(height: 4),
                              Text(
                                "Dzauqi Legend",
                                style: theme.textTheme.bodyMedium,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Column(
                children: [
                  GestureDetector(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Unduhan Teratas",
                          style: theme.textTheme.titleMedium,
                        ),
                        const Icon(Icons.arrow_forward)
                      ],
                    ),
                  ),
                  const SizedBox(height: 12),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Wrap(
                      spacing: 16,
                      direction: Axis.horizontal,
                      children: List.generate(
                        11,
                        (index) => SizedBox(
                          height: 296,
                          width: 156,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Expanded(
                                child: ClipRRect(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(4.0)),
                                  child: Image(
                                    fit: BoxFit.fill,
                                    image: AssetImage(
                                      "assets/images/book_cover_1.jpeg",
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(height: 8),
                              Text(
                                "Valorant Guide To Radiant",
                                style: theme.textTheme.titleMedium,
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                              ),
                              const SizedBox(height: 4),
                              Text(
                                "Dzauqi Legend",
                                style: theme.textTheme.bodyMedium,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Column(
                children: [
                  GestureDetector(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Kategori Pilihan Kamu",
                          style: theme.textTheme.titleMedium,
                        ),
                        const Icon(Icons.arrow_forward),
                      ],
                    ),
                  ),
                  const SizedBox(height: 12),
                  SizedBox(
                    width: double.infinity,
                    child: Wrap(
                      spacing: 8,
                      children: categories
                          .map(
                            (category) => OutlinedButton(
                              onPressed: () {},
                              style: OutlinedButton.styleFrom(
                                shape: const RoundedRectangleBorder(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(4),
                                  ),
                                ),
                              ),
                              child: Text(category),
                            ),
                          )
                          .toList(),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Kategori Lainnya",
                        style: theme.textTheme.titleMedium,
                      ),
                      const Icon(Icons.arrow_forward),
                    ],
                  ),
                  const SizedBox(height: 12),
                  SizedBox(
                    width: double.infinity,
                    child: Wrap(
                      spacing: 8,
                      children: categories
                          .map(
                            (category) => OutlinedButton(
                              onPressed: () {},
                              style: OutlinedButton.styleFrom(
                                shape: const RoundedRectangleBorder(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(4),
                                  ),
                                ),
                              ),
                              child: Text(category),
                            ),
                          )
                          .toList(),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
