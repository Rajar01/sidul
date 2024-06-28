import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BookmarkScreen extends StatefulWidget {
  const BookmarkScreen({super.key});

  @override
  State<BookmarkScreen> createState() => _BookmarkScreenState();
}

class _BookmarkScreenState extends State<BookmarkScreen> {
  final categories = <String>[
    "Semua",
    "Matematika",
    "Pemrograman Mobile",
    "Desain Web",
    "Bahasa Indonesia",
    "Bahasa Inggris",
    "Pemrograman Dasar",
    "Kebudayaan",
  ];

  final isHaveBookmark = true;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return DefaultTabController(
      length: categories.length,
      initialIndex: 1,
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(144),
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              children: [
                Row(
                  children: [
                    const BackButtonIcon(),
                    const SizedBox(width: 12),
                    Text(
                      "Bookmark",
                      style: theme.textTheme.titleLarge,
                    ),
                  ],
                ),
                const SizedBox(height: 16),
                TabBar(
                  tabAlignment: TabAlignment.start,
                  isScrollable: true,
                  onTap: (index) {},
                  tabs: categories
                      .map(
                        (category) => Tab(
                          child: Text(category),
                        ),
                      )
                      .toList(),
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: NavigationBar(
          surfaceTintColor: theme.colorScheme.onPrimary,
          height: 72,
          indicatorColor: theme.colorScheme.primary,
          selectedIndex: 2,
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
              icon: const Icon(Icons.explore),
              label: "Eksplorasi",
            ),
            NavigationDestination(
              selectedIcon: Icon(
                Icons.bookmark,
                color: theme.colorScheme.onPrimary,
              ),
              icon: const Icon(Icons.bookmark),
              label: "Bookmark",
            ),
            NavigationDestination(
              selectedIcon: Icon(
                Icons.cloud_download,
                color: theme.colorScheme.onPrimary,
              ),
              icon: const Icon(Icons.cloud_download),
              label: "Unduhan",
            )
          ],
        ),
        body: isHaveBookmark
            ? ListView.separated(
                padding: const EdgeInsets.all(16),
                itemCount: 10,
                separatorBuilder: (context, index) =>
                    const SizedBox(height: 12),
                itemBuilder: (context, index) => SizedBox(
                  // Image height
                  height: 192,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      ClipRRect(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(4.0)),
                        child: Image.asset(
                          "assets/images/book_cover_1.jpeg",
                          // Image width
                          width: 128,
                          fit: BoxFit.fill,
                        ),
                      ),
                      const SizedBox(width: 12),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Valorant Guide To Radiant: Best Guide 1990",
                              style: theme.textTheme.titleMedium,
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                            ),
                            const SizedBox(height: 4),
                            Row(
                              children: [
                                Icon(
                                  Icons.person,
                                  color: theme.colorScheme.primary,
                                ),
                                const SizedBox(width: 4),
                                Text(
                                  "Dzauqi Legend",
                                  style: theme.textTheme.bodyMedium,
                                ),
                              ],
                            ),
                            const SizedBox(height: 4),
                            Row(
                              children: [
                                Icon(
                                  Icons.star,
                                  color: theme.colorScheme.primary,
                                ),
                                const SizedBox(width: 4),
                                Text(
                                  "4.5",
                                  style: theme.textTheme.bodyMedium,
                                ),
                              ],
                            ),
                            const SizedBox(height: 4),
                            Container(
                              padding: const EdgeInsets.all(8),
                              decoration: BoxDecoration(
                                color: theme.colorScheme.primaryContainer,
                                borderRadius: const BorderRadius.all(
                                  Radius.circular(4),
                                ),
                              ),
                              child: Text(
                                "Matematika",
                                style: theme.textTheme.bodyMedium!.copyWith(
                                  color: theme.colorScheme.primary,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(width: 12),
                      GestureDetector(
                        onTap: () {
                          showCupertinoModalPopup(
                            context: context,
                            builder: (context) => CupertinoActionSheet(
                              actions: [
                                CupertinoActionSheetAction(
                                  onPressed: () {},
                                  child: const Text("Hapus Bookmark"),
                                ),
                                CupertinoActionSheetAction(
                                  onPressed: () {},
                                  child: const Text("Tentang Modul"),
                                ),
                                CupertinoActionSheetAction(
                                  onPressed: () {},
                                  child: const Text("Download Modul"),
                                )
                              ],
                            ),
                          );
                        },
                        child: const Icon(Icons.more_vert),
                      )
                    ],
                  ),
                ),
              )
            : Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      "assets/images/blank_bookmark.png",
                      width: 260,
                      height: 160,
                    ),
                    const SizedBox(height: 16),
                    Text(
                      "Kosong",
                      style: theme.textTheme.headlineSmall,
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 4),
                    Text(
                      "Anda tidak mempunyai modul apa pun yang di bookmark saat ini",
                      style: theme.textTheme.bodyMedium,
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
      ),
    );
  }
}
