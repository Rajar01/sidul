import 'package:flutter/material.dart';

class SearchResultScreen extends StatefulWidget {
  const SearchResultScreen({super.key});

  @override
  State<SearchResultScreen> createState() => _SearchResultScreenState();
}

class _SearchResultScreenState extends State<SearchResultScreen> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(80),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              Row(
                children: [
                  const BackButtonIcon(),
                  const SizedBox(width: 12),
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
                ],
              ),
            ],
          ),
        ),
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
    );
  }
}
