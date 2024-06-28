import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class UploadedModuleScreen extends StatefulWidget {
  const UploadedModuleScreen({super.key});

  @override
  State<UploadedModuleScreen> createState() => _UploadedModuleScreenState();
}

class _UploadedModuleScreenState extends State<UploadedModuleScreen> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text("Daftar Modul Anda"),
        scrolledUnderElevation: 0,
      ),
      bottomNavigationBar: NavigationBar(
        surfaceTintColor: theme.colorScheme.onPrimary,
        height: 72,
        indicatorColor: theme.colorScheme.primary,
        selectedIndex: 0,
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
      body: ListView.separated(
        padding: const EdgeInsets.all(16),
        itemCount: 10,
        separatorBuilder: (context, index) => const SizedBox(height: 12),
        itemBuilder: (context, index) => SizedBox(
          // Image height
          height: 192,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              ClipRRect(
                borderRadius: const BorderRadius.all(Radius.circular(4.0)),
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
                          child: const Text("Hapus Modul"),
                        ),
                        CupertinoActionSheetAction(
                          onPressed: () {},
                          child: const Text("Edit"),
                        ),
                      ],
                    ),
                  );
                },
                child: const Icon(Icons.more_vert),
              )
            ],
          ),
        ),
      ),
    );
  }
}
