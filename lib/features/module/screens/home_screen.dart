import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
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

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return DefaultTabController(
      length: categories.length,
      initialIndex: 0,
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(144),
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              children: [
                Row(
                  children: [
                    Expanded(
                      child: SearchAnchor(
                        suggestionsBuilder: (context, controller) =>
                            List<ListTile>.generate(
                          15,
                          (index) => ListTile(
                            title: Text("Pencarian Sebelumnya $index"),
                            onTap: () {
                              setState(() {
                                controller
                                    .closeView("Pencarian Sebelumnya $index");
                              });
                            },
                          ),
                        ),
                        builder: (context, controller) => SearchBar(
                          controller: controller,
                          onTap: () {
                            controller.openView();
                          },
                          onChanged: (_) {
                            controller.openView();
                          },
                          hintText: "Telusuri Modul",
                          leading: const Padding(
                            padding: EdgeInsets.all(8),
                            child: Icon(Icons.search),
                          ),
                          trailing: [
                            GestureDetector(
                              onTap: () {},
                              child: const Padding(
                                padding: EdgeInsets.all(8),
                                child: Icon(Icons.filter_alt),
                              ),
                            ),
                          ],
                          backgroundColor: MaterialStatePropertyAll(
                              theme.colorScheme.primaryContainer),
                          surfaceTintColor: const MaterialStatePropertyAll(
                            Colors.transparent,
                          ),
                          shadowColor: const MaterialStatePropertyAll(
                            Colors.transparent,
                          ),
                          constraints:
                              const BoxConstraints.tightForFinite(height: 48),
                        ),
                      ),
                    ),
                    const SizedBox(width: 12),
                    const Badge(
                      child: Icon(Icons.notifications),
                    ),
                    const SizedBox(width: 12),
                    const CircleAvatar(radius: 24),
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
        body: GridView.builder(
          itemCount: 11,
          padding: const EdgeInsets.all(16),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 8,
            mainAxisSpacing: 8,
            mainAxisExtent: 296,
          ),
          itemBuilder: (context, index) => GestureDetector(
            onTap: () {},
            child: Card.filled(
              color: Colors.transparent,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(4.0)),
                    child: Image(
                      fit: BoxFit.fitWidth,
                      height: 224,
                      image: AssetImage("assets/images/book_cover_1.jpeg"),
                    ),
                  ),
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
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
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
