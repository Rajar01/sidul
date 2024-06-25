import 'package:flutter/material.dart';
import 'package:sidul/shared/widgets/button_widget.dart';

class ModuleScreen extends StatefulWidget {
  const ModuleScreen({super.key});

  @override
  State<ModuleScreen> createState() => _ModuleScreenState();
}

class _ModuleScreenState extends State<ModuleScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: SizedBox(
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
            child: Row(
              children: [
                Expanded(
                  child: HAButton(
                    text: "Unduh",
                    onPressed: () {},
                  ),
                ),
                const SizedBox(width: 16),
                SizedBox(
                  height: 48,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(4),
                        ),
                      ),
                      shadowColor: Colors.transparent,
                      backgroundColor: const Color.fromARGB(255, 0, 111, 253),
                      foregroundColor: Colors.white,
                    ),
                    child: const Icon(Icons.computer),
                  ),
                )
              ],
            ),
          ),
        ),
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(120),
          child: Padding(
            padding:
                const EdgeInsets.only(bottom: 0, right: 32, left: 32, top: 32),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                Row(
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
                          Icons.chat,
                        ),
                      ),
                    ),
                    const SizedBox(width: 4),
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
                          Icons.menu,
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(32),
            child: Column(
              children: [
                SizedBox(
                  width: double.infinity,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: 112,
                        height: 160,
                        color: Colors.grey,
                      ),
                      const SizedBox(height: 8),
                      const Text(
                        "Valorant Guide To Radiant",
                        style: TextStyle(
                          fontFamily: "Inter",
                          fontWeight: FontWeight.w900,
                          fontSize: 18,
                        ),
                      ),
                      const SizedBox(height: 8),
                      const Text(
                        "Dzauqi Legend",
                        style: TextStyle(
                          fontFamily: "Inter",
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(height: 16),
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.symmetric(vertical: 12),
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(4),
                    ),
                    color: Color.fromARGB(255, 234, 242, 255),
                  ),
                  child: Row(
                    children: [
                      const Expanded(
                        child: Column(
                          children: [
                            Text("Skor"),
                            SizedBox(height: 8),
                            Text("4.5"),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Container(
                          decoration: const BoxDecoration(
                            border: Border.symmetric(
                              vertical: BorderSide(
                                width: 0.5,
                                color: Color.fromARGB(255, 212, 214, 221),
                              ),
                            ),
                          ),
                          child: const Column(
                            children: [
                              Text("Halaman"),
                              SizedBox(height: 8),
                              Text("500"),
                            ],
                          ),
                        ),
                      ),
                      const Expanded(
                        child: Column(
                          children: [
                            Text("Diunduh"),
                            SizedBox(height: 8),
                            Text("10k"),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 16),
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          "Tentang Modul",
                          style: TextStyle(
                            fontFamily: "Inter",
                            fontWeight: FontWeight.w800,
                            fontSize: 14,
                          ),
                        ),
                        IconButton(
                          onPressed: () {},
                          iconSize: 24,
                          icon: const Icon(
                            Icons.chevron_right,
                            color: Color.fromARGB(255, 0, 111, 253),
                          ),
                        )
                      ],
                    ),
                    const Text(
                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla viverra sollicitudin arcu a vulputate. "
                      "Donec fermentum magna ut "
                      "facilisis egestas. "
                      "Sed eleifend elit et dolor hendrerit, vel laoreet urna imperdiet. Vestibulum dui orci, "
                      "laoreet et arcu eu, commodo laoreet enim. Suspendisse finibus urna luctus commodo convallis. "
                      "Nam neque felis, auctor ut mollis sed, iaculis ac mi. Phasellus commodo nulla odio, vitae malesuada "
                      "elit vestibulum ac. Maecenas in turpis blandit nulla condimentum luctus. Sed lectus dui, ornare "
                      "ac semper tincidunt, accumsan non neque. Etiam eu purus tellus. In in dolor id ipsum convallis"
                      " rutrum quis nec metus. Etiam elementum neque at libero tristique, in consectetur nibh placerat.",
                      style: TextStyle(
                        fontFamily: "Inter",
                        fontWeight: FontWeight.w400,
                        fontSize: 12,
                      ),
                      maxLines: 10,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
                const SizedBox(height: 16),
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          "Skor & Ulasan",
                          style: TextStyle(
                            fontFamily: "Inter",
                            fontWeight: FontWeight.w800,
                            fontSize: 14,
                          ),
                        ),
                        IconButton(
                          onPressed: () {},
                          iconSize: 24,
                          icon: const Icon(
                            Icons.chevron_right,
                            color: Color.fromARGB(255, 0, 111, 253),
                          ),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        const Expanded(
                          child: Padding(
                            padding: EdgeInsets.only(right: 16),
                            child: Column(
                              children: [
                                Text(
                                  "4.5",
                                  style: TextStyle(
                                    fontFamily: "Inter",
                                    fontWeight: FontWeight.w500,
                                    fontSize: 40,
                                  ),
                                ),
                                SizedBox(height: 8),
                                Row(
                                  children: [
                                    Icon(Icons.star),
                                    SizedBox(height: 4),
                                    Icon(Icons.star),
                                    SizedBox(height: 4),
                                    Icon(Icons.star),
                                    SizedBox(height: 4),
                                    Icon(Icons.star),
                                    SizedBox(height: 4),
                                    Icon(Icons.star),
                                  ],
                                ),
                                SizedBox(height: 8),
                                Text(
                                  "(6.8k Ulasan)",
                                  style: TextStyle(
                                    fontFamily: "Inter",
                                    fontWeight: FontWeight.w400,
                                    fontSize: 16,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          width: 0.5,
                          height: 120,
                          color: const Color.fromARGB(255, 212, 214, 221),
                        ),
                        const Expanded(
                          child: Padding(
                            padding: EdgeInsets.only(left: 16),
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Text("5"),
                                    SizedBox(width: 8),
                                    Expanded(
                                      child: LinearProgressIndicator(
                                        value: 1,
                                        minHeight: 4,
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(16)),
                                        valueColor: AlwaysStoppedAnimation(
                                            Color.fromARGB(255, 0, 111, 253)),
                                      ),
                                    )
                                  ],
                                ),
                                SizedBox(height: 4),
                                Row(
                                  children: [
                                    Text("4"),
                                    SizedBox(width: 8),
                                    Expanded(
                                      child: LinearProgressIndicator(
                                        value: 0.8,
                                        minHeight: 4,
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(16)),
                                        valueColor: AlwaysStoppedAnimation(
                                            Color.fromARGB(255, 0, 111, 253)),
                                      ),
                                    )
                                  ],
                                ),
                                SizedBox(height: 4),
                                Row(
                                  children: [
                                    Text("3"),
                                    SizedBox(width: 8),
                                    Expanded(
                                      child: LinearProgressIndicator(
                                        value: 0.6,
                                        minHeight: 4,
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(16)),
                                        valueColor: AlwaysStoppedAnimation(
                                            Color.fromARGB(255, 0, 111, 253)),
                                      ),
                                    )
                                  ],
                                ),
                                SizedBox(height: 4),
                                Row(
                                  children: [
                                    Text("2"),
                                    SizedBox(width: 8),
                                    Expanded(
                                      child: LinearProgressIndicator(
                                        value: 0.2,
                                        minHeight: 4,
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(16)),
                                        valueColor: AlwaysStoppedAnimation(
                                            Color.fromARGB(255, 0, 111, 253)),
                                      ),
                                    )
                                  ],
                                ),
                                SizedBox(height: 4),
                                Row(
                                  children: [
                                    Text("1"),
                                    SizedBox(width: 8),
                                    Expanded(
                                      child: LinearProgressIndicator(
                                        value: 0.9,
                                        minHeight: 4,
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(16)),
                                        valueColor: AlwaysStoppedAnimation(
                                            Color.fromARGB(255, 0, 111, 253)),
                                      ),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
                const SizedBox(height: 16),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Text(
                      "Beri Rating Modul Ini",
                      style: TextStyle(
                        fontFamily: "Inter",
                        fontWeight: FontWeight.w800,
                        fontSize: 14,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        IconButton(
                          onPressed: () {},
                          iconSize: 32,
                          icon: const Icon(Icons.star_border),
                        ),
                        const SizedBox(height: 4),
                        IconButton(
                          onPressed: () {},
                          iconSize: 32,
                          icon: const Icon(Icons.star_border),
                        ),
                        const SizedBox(height: 4),
                        IconButton(
                          onPressed: () {},
                          iconSize: 32,
                          icon: const Icon(Icons.star_border),
                        ),
                        const SizedBox(height: 4),
                        IconButton(
                          onPressed: () {},
                          iconSize: 32,
                          icon: const Icon(Icons.star_border),
                        ),
                        const SizedBox(height: 4),
                        IconButton(
                          onPressed: () {},
                          iconSize: 32,
                          icon: const Icon(Icons.star_border),
                        ),
                      ],
                    ),
                    const SizedBox(height: 8),
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        textStyle: const TextStyle(
                          fontFamily: "Inter",
                          fontWeight: FontWeight.w600,
                          fontSize: 12,
                        ),
                        backgroundColor: Colors.transparent,
                        elevation: 0,
                        shadowColor: Colors.transparent,
                        foregroundColor: const Color.fromARGB(255, 0, 111, 253),
                        shape: const RoundedRectangleBorder(
                          side: BorderSide(
                            width: 1.5,
                            color: Color.fromARGB(255, 0, 111, 253),
                          ),
                          borderRadius: BorderRadius.all(
                            Radius.circular(4),
                          ),
                        ),
                      ),
                      child: const Text("Tulis Ulasan"),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
