import 'package:flutter/material.dart';

class SearchResultScreen extends StatefulWidget {
  const SearchResultScreen({super.key});

  @override
  State<SearchResultScreen> createState() => _SearchResultScreenState();
}

class _SearchResultScreenState extends State<SearchResultScreen> {
  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final colorScheme = Theme.of(context).colorScheme;

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(88),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Row(
            children: [
              IconButton(
                color: colorScheme.primary,
                iconSize: 32,
                onPressed: () {},
                icon: const Icon(Icons.chevron_left),
              ),
              const SizedBox(width: 8),
              Expanded(
                child: SearchBar(
                  leading: const Icon(Icons.search),
                  trailing: [
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.filter_alt),
                    ),
                  ],
                  shadowColor:
                      const MaterialStatePropertyAll(Colors.transparent),
                  surfaceTintColor:
                      const MaterialStatePropertyAll(Colors.transparent),
                  shape: const MaterialStatePropertyAll(
                    RoundedRectangleBorder(
                      side: BorderSide(width: 1),
                      borderRadius: BorderRadius.all(
                        Radius.circular(4),
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(
          top: 0,
          bottom: 16,
          right: 16,
          left: 16,
        ),
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
    );
  }
}
