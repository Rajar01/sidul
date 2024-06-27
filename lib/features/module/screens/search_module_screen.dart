import 'package:flutter/material.dart';

class SearchModuleScreen extends StatefulWidget {
  const SearchModuleScreen({super.key});

  @override
  State<SearchModuleScreen> createState() => _SearchModuleScreenState();
}

class _SearchModuleScreenState extends State<SearchModuleScreen> {
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
          bottom: 0,
          right: 16,
          left: 16,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              "Pencarian Sebelumnya",
              style: textTheme.titleSmall,
            ),
            const SizedBox(height: 16),
            const Divider(
              height: 0.5,
            ),
            const SizedBox(height: 16),
            Column(
              children: List.generate(
                6,
                (_) => Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Text(
                        "Harry Potter and the Half Blood Prince",
                        style: textTheme.bodyMedium,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    const SizedBox(width: 4),
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.cancel_rounded))
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
