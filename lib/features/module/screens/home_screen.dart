import 'package:flutter/material.dart';
import 'package:sidul/features/module/screens/module_screen.dart';
import 'package:sidul/shared/widgets/app_bar_widget.dart';
import 'package:sidul/shared/widgets/bottom_bar_widget.dart';

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
    final selectedCategory = categories.first;

    return SafeArea(
      child: Scaffold(
        appBar: HAAppBar(),
        bottomNavigationBar: HABottomNavigationBar(),
        body: Padding(
          padding: const EdgeInsets.only(
            top: 16,
            bottom: 0,
            right: 32,
            left: 32,
          ),
          child: Column(
            children: [
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Container(
                  padding: const EdgeInsets.only(bottom: 16),
                  decoration: const BoxDecoration(
                    border: Border(
                      bottom: BorderSide(
                        width: 0.5,
                        color: Color.fromARGB(255, 212, 214, 221),
                      ),
                    ),
                  ),
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
                              fontFamily: "Inter",
                              fontWeight: FontWeight.w600,
                              fontSize: 12,
                              color: MaterialStateColor.resolveWith(
                                (states) {
                                  if (states.contains(MaterialState.selected)) {
                                    return Colors.white;
                                  } else {
                                    return const Color.fromARGB(
                                        255, 0, 111, 253);
                                  }
                                },
                              ),
                            ),
                            color: MaterialStateColor.resolveWith(
                              (states) {
                                if (states.contains(MaterialState.selected)) {
                                  return const Color.fromARGB(255, 0, 111, 253);
                                } else {
                                  return const Color.fromARGB(
                                      255, 234, 242, 255);
                                }
                              },
                            ),
                            shape: const RoundedRectangleBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(4),
                              ),
                            ),
                            labelPadding: const EdgeInsets.symmetric(
                              horizontal: 8,
                              vertical: 8,
                            ),
                            selected: category == selectedCategory,
                            onSelected: (_) {},
                          ),
                        )
                        .toList(),
                  ),
                ),
              ),
              const SizedBox(height: 16),
              Expanded(
                child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 16,
                    mainAxisSpacing: 16,
                    mainAxisExtent: 245,
                  ),
                  itemBuilder: (context, index) {
                    return GridTile(
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const ModuleScreen(),
                            ),
                          );
                        },
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              // color: Colors.grey,
                              height: 192,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                border: Border.all(width: 1),
                                borderRadius: const BorderRadius.all(
                                  Radius.circular(4),
                                ),
                              ),
                            ),
                            const SizedBox(height: 8),
                            const Text(
                              "Valorant Guide To Radiant",
                              style: TextStyle(
                                fontFamily: "Inter",
                                fontWeight: FontWeight.w800,
                                fontSize: 14,
                              ),
                              maxLines: 1,
                            ),
                            const SizedBox(height: 8),
                            const Text(
                              "Dzauqi Legend",
                              style: TextStyle(
                                fontFamily: "Inter",
                                fontWeight: FontWeight.w400,
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
