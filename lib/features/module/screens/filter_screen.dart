import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';

class FilterScreen extends StatefulWidget {
  const FilterScreen({super.key});

  @override
  State<FilterScreen> createState() => _FilterScreenState();
}

class _FilterScreenState extends State<FilterScreen> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      appBar: AppBar(
        leading: BackButtonIcon(),
        title: Text("Filter"),
        scrolledUnderElevation: 0,
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              "Pengurutan",
              style: theme.textTheme.titleMedium,
            ),
            SizedBox(height: 8),
            DropdownSearch<String>(
              popupProps: PopupProps.menu(
                showSelectedItems: false,
              ),
              items: ["Brazil", "Italia", "Tunisia", 'Canada'],
              dropdownDecoratorProps: DropDownDecoratorProps(
                dropdownSearchDecoration: InputDecoration(
                  border: OutlineInputBorder(),
                  contentPadding: EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 20,
                  ),
                ),
                baseStyle: theme.textTheme.bodyLarge,
              ),
              selectedItem: "Brazil",
            ),
            SizedBox(height: 24),
            Text(
              "Kategori",
              style: theme.textTheme.titleMedium,
            ),
            SizedBox(height: 8),
            DropdownSearch<String>(
              popupProps: PopupProps.menu(
                showSelectedItems: false,
                showSearchBox: true,
              ),
              items: ["Brazil", "Italia", "Tunisia", 'Canada'],
              dropdownDecoratorProps: DropDownDecoratorProps(
                dropdownSearchDecoration: InputDecoration(
                  border: OutlineInputBorder(),
                  contentPadding: EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 20,
                  ),
                ),
                baseStyle: theme.textTheme.bodyLarge,
              ),
              selectedItem: "Brazil",
            ),
            SizedBox(height: 24),
            Text(
              "Penulis",
              style: theme.textTheme.titleMedium,
            ),
            SizedBox(height: 8),
            DropdownSearch<String>(
              popupProps: PopupProps.menu(
                showSelectedItems: false,
                showSearchBox: true,
              ),
              items: ["Brazil", "Italia", "Tunisia", 'Canada'],
              dropdownDecoratorProps: DropDownDecoratorProps(
                dropdownSearchDecoration: InputDecoration(
                  border: OutlineInputBorder(),
                  contentPadding: EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 20,
                  ),
                ),
                baseStyle: theme.textTheme.bodyLarge,
              ),
              selectedItem: "Brazil",
            ),
            Expanded(child: Container()),
            SizedBox(
              width: double.infinity,
              child: Row(
                children: [
                  Expanded(
                    child: OutlinedButton(
                      onPressed: () {},
                      child: const Text("Batal"),
                    ),
                  ),
                  SizedBox(width: 8),
                  Expanded(
                    child: FilledButton(
                      onPressed: () {},
                      child: const Text("Terapkan"),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
