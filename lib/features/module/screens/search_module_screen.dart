import 'package:flutter/material.dart';
import 'package:sidul/shared/widgets/search_bar_widget.dart';

class SearchModuleScreen extends StatefulWidget {
  const SearchModuleScreen({super.key});

  @override
  State<SearchModuleScreen> createState() => _SearchModuleScreenState();
}

class _SearchModuleScreenState extends State<SearchModuleScreen> {
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
                const Expanded(
                  child: HASearchBar()
                )
              ],
            ),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
          child: Column(
            children: [
              Container(
                width: double.infinity,
                padding: const EdgeInsets.only(bottom: 16),
                decoration: const BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      width: 0.5,
                      color: Color.fromARGB(255, 212, 214, 221),
                    ),
                  ),
                ),
                child: Text(
                  "Pencarian Sebelumnya".toUpperCase(),
                  style: const TextStyle(
                    fontFamily: "Inter",
                    fontWeight: FontWeight.w600,
                    fontSize: 10,
                  ),
                ),
              ),
              const SizedBox(height: 16),
              Expanded(
                child: ListView.builder(
                  itemCount: 5,
                  itemBuilder: (context, index) => Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Expanded(
                        child: Text(
                          "Harry Potter and the Half Blood Prince Blood",
                          style: TextStyle(
                            fontFamily: "Inter",
                            fontWeight: FontWeight.w400,
                            fontSize: 14,
                          ),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      const SizedBox(width: 16),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.remove_circle_outline),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
