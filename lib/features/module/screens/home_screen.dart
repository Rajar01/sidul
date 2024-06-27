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
    final textTheme = Theme.of(context).textTheme;
    final colorScheme = Theme.of(context).colorScheme;
    final selectedCategory = categories.first;

    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.book),
        titleSpacing: 0,
        scrolledUnderElevation: 0,
        title: Text(
          "SIDUL",
          style: textTheme.titleMedium,
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.notifications),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.settings),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_filled),
            label: "Beranda",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.explore),
            label: "Eksplorasi",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.bookmark),
            label: "Bookmark",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.cloud_download),
            label: "Unduhan",
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 0, bottom: 16, right: 16, left: 16),
        child: Column(
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Wrap(
                direction: Axis.horizontal,
                spacing: 8,
                children: categories
                    .map(
                      (category) => FilterChip(
                        label: Text(category),
                        showCheckmark: false,
                        side: BorderSide.none,
                        labelStyle: TextStyle(
                          color: MaterialStateColor.resolveWith(
                            (states) {
                              if (states.contains(MaterialState.selected)) {
                                return colorScheme.onPrimary;
                              } else {
                                return colorScheme.primary;
                              }
                            },
                          ),
                        ),
                        color: MaterialStateColor.resolveWith(
                          (states) {
                            if (states.contains(MaterialState.selected)) {
                              return colorScheme.primary;
                            } else {
                              return colorScheme.primaryContainer;
                            }
                          },
                        ),
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(4),
                          ),
                        ),
                        labelPadding: const EdgeInsets.symmetric(
                          horizontal: 4,
                          vertical: 4,
                        ),
                        selected: category == selectedCategory,
                        onSelected: (_) {},
                      ),
                    )
                    .toList(),
              ),
            ),
            const SizedBox(height: 16),
            const Divider(
              height: 0.5,
              indent: 8,
              endIndent: 8,
            ),
            const SizedBox(height: 16),
            Expanded(
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 8,
                  mainAxisSpacing: 8,
                  mainAxisExtent: 296,
                ),
                itemCount: 11,
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
                            image:
                                AssetImage("assets/images/book_cover_1.jpeg"),
                          ),
                        ),
                        Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Valorant Guide To Radiant",
                                style: textTheme.titleMedium,
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                              ),
                              const SizedBox(height: 4),
                              Text(
                                "Dzauqi Legend",
                                style: textTheme.bodyMedium,
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
