import 'package:flutter/material.dart';

class DonwloadedModuleScreen extends StatefulWidget {
  const DonwloadedModuleScreen({super.key});

  @override
  State<DonwloadedModuleScreen> createState() => _DonwloadedModuleScreenState();
}

class _DonwloadedModuleScreenState extends State<DonwloadedModuleScreen> {
  final isHaveDownloadedModule = true;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      appBar: AppBar(
        scrolledUnderElevation: 0,
        leading: BackButtonIcon(),
        title: Text(
          "Modul Yang Diunduh",
          overflow: TextOverflow.ellipsis,
          maxLines: 1,
        ),
      ),
      bottomNavigationBar: NavigationBar(
        surfaceTintColor: theme.colorScheme.onPrimary,
        height: 72,
        indicatorColor: theme.colorScheme.primary,
        selectedIndex: 3,
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
        child: isHaveDownloadedModule ? ListView.separated(
          itemBuilder: (context, index) => Container(
            decoration: BoxDecoration(
              color: theme.colorScheme.primaryContainer,
              borderRadius: BorderRadius.circular(4),
            ),
            padding: EdgeInsets.all(16),
            child: Row(
              children: [
                Icon(
                  Icons.file_copy,
                  size: 48,
                  color: theme.colorScheme.primary,
                ),
                SizedBox(width: 12),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Valorant Guide to Radiant",
                        style: theme.textTheme.titleSmall,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                      SizedBox(height: 4),
                      Text("Ukuran 1.4 MB"),
                    ],
                  ),
                ),
                SizedBox(width: 4),
                Icon(Icons.more_vert),
              ],
            ),
          ),
          separatorBuilder: (context, index) => SizedBox(height: 12),
          itemCount: 12,
        ) : Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                "assets/images/blank_downloaded.png",
                width: 232,
                height: 200,
              ),
              const SizedBox(height: 16),
              Text(
                "Kosong",
                style: theme.textTheme.headlineSmall,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 4),
              Text(
                "Anda tidak mempunyai modul apa pun yang di unduh saat ini",
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
