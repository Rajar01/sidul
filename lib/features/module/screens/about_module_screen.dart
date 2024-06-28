import 'package:flutter/material.dart';

class AboutModuleScreen extends StatefulWidget {
  const AboutModuleScreen({super.key});

  @override
  State<AboutModuleScreen> createState() => _AboutModuleScreenState();
}

class _AboutModuleScreenState extends State<AboutModuleScreen> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      appBar: AppBar(
        leading: const BackButtonIcon(),
        title: const Text(
          "Tentang Modul Ini",
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            const Text(
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit. "
              "Nulla viverra sollicitudin arcu a vulputate. Donec fermentum "
              "magna ut facilisis egestas. Sed eleifend elit et dolor hendrerit, "
              "vel laoreet urna imperdiet. Vestibulum dui orci, laoreet et arcu eu, "
              "commodo laoreet enim. Suspendisse finibus urna luctus commodo convallis."
              "\n\nNam neque felis, auctor ut mollis sed, iaculis ac mi. Phasellus "
              "commodo nulla odio, vitae malesuada elit vestibulum ac. "
              "Maecenas in turpis blandit nulla condimentum luctus. Sed lectus dui, "
              "ornare ac semper tincidunt, accumsan non neque. Etiam eu purus tellus. "
              "In in dolor id ipsum convallis rutrum quis nec metus. Etiam elementum"
              " neque at libero tristique, in consectetur nibh placerat.",
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 16),
              child: Divider(height: 0.5),
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Halaman",
                            style: theme.textTheme.bodyLarge!
                                .copyWith(color: theme.colorScheme.primary),
                          ),
                          const Text("550"),
                        ],
                      ),
                      const SizedBox(height: 12),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Penulis",
                            style: theme.textTheme.bodyLarge!
                                .copyWith(color: theme.colorScheme.primary),
                          ),
                          const Text("Dzauqi"),
                        ],
                      ),
                      const SizedBox(height: 12),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Diunduh",
                            style: theme.textTheme.bodyLarge!
                                .copyWith(color: theme.colorScheme.primary),
                          ),
                          const Text("10k"),
                        ],
                      ),
                      const SizedBox(height: 12),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Diunggah",
                            style: theme.textTheme.bodyLarge!
                                .copyWith(color: theme.colorScheme.primary),
                          ),
                          const Text("31 Mei 2024"),
                        ],
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Bahasa",
                            style: theme.textTheme.bodyLarge!
                                .copyWith(color: theme.colorScheme.primary),
                          ),
                          const Text("Indonesia"),
                        ],
                      ),
                      const SizedBox(height: 12),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Kategori",
                            style: theme.textTheme.bodyLarge!
                                .copyWith(color: theme.colorScheme.primary),
                          ),
                          const Text("Pervaloan"),
                        ],
                      ),
                      const SizedBox(height: 12),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Ukuran",
                            style: theme.textTheme.bodyLarge!
                                .copyWith(color: theme.colorScheme.primary),
                          ),
                          const Text("2.1 MB"),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
