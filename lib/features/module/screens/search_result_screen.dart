import 'package:flutter/material.dart';
import 'package:sidul/shared/widgets/search_bar_widget.dart';

class SearchResultScreen extends StatefulWidget {
  const SearchResultScreen({super.key});

  @override
  State<SearchResultScreen> createState() => _SearchResultScreenState();
}

class _SearchResultScreenState extends State<SearchResultScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(80),
          child: Padding(
            padding:
                const EdgeInsets.only(bottom: 0, right: 32, left: 32, top: 32),
            child: Row(
              children: [
                InkWell(
                  customBorder: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(24),
                  ),
                  splashColor: Colors.grey.shade400,
                  onTap: () {},
                  child: Ink(
                    height: 36,
                    width: 36,
                    child: const Icon(
                      Icons.arrow_back,
                    ),
                  ),
                ),
                const SizedBox(width: 16),
                const Expanded(child: HASearchBar())
              ],
            ),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.only(top: 32, bottom: 0, left: 32, right: 32),
          child: GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 16,
              mainAxisSpacing: 16,
              mainAxisExtent: 245,
            ),
            itemBuilder: (context, index) {
              return GridTile(
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
              );
            },
          ),
        ),
      ),
    );
  }
}
