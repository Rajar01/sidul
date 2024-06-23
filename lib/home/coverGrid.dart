import 'package:flutter/material.dart';
import 'package:sidul/modules/modulAppbar.dart';

class Modules {
  final String cover;
  final String title;
  final String author;

  Modules({
    required this.cover,
    required this.title,
    required this.author,
  });
}

final List<Modules> modul = [
  Modules(
    cover: 'assets/img/Cover/cover1.jpg',
    title: 'Valorant Guide To Radiant',
    author: 'Dzauqi Legend',
  ),
  Modules(
    cover: 'assets/img/Cover/cover1.jpg',
    title: 'Valorant Guide To Radiant',
    author: 'Dzauqi Legend',
  ),
  Modules(
    cover: 'assets/img/Cover/cover1.jpg',
    title: 'Valorant Guide To Radiant',
    author: 'Dzauqi Legend',
  ),
  Modules(
    cover: 'assets/img/Cover/cover1.jpg',
    title: 'Valorant Guide To Radiant',
    author: 'Dzauqi Legend',
  ),
  Modules(
    cover: 'assets/img/Cover/cover1.jpg',
    title: 'Valorant Guide To Radiant',
    author: 'Dzauqi Legend',
  ),
  Modules(
    cover: 'assets/img/Cover/cover1.jpg',
    title: 'Valorant Guide To Radiant',
    author: 'Dzauqi Legend',
  ),
];

class coverBook extends StatefulWidget {
  const coverBook({super.key});

  @override
  State<coverBook> createState() => _coverBookState();
}

class _coverBookState extends State<coverBook> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(4.0),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, // Number of items per row
            crossAxisSpacing: 8.0,
            mainAxisSpacing: 8.0,
            mainAxisExtent: 290,
          ),
          itemCount: modul.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            modulPage(modules: modul[index])));
              },
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4.0),
                    color: Colors.white),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(4),
                      child: Image(
                        image: AssetImage(modul[index].cover),
                        height: 225,
                        width: double.infinity,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            modul[index].title,
                            style: const TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 16),
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                          Text(
                            modul[index].author,
                            style: const TextStyle(
                                fontWeight: FontWeight.w200, fontSize: 14),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

class modulPage extends StatelessWidget {
  final Modules modules;

  const modulPage({super.key, required this.modules});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: modulAppBar(),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(
              right: 32.0, left: 32.0, top: 16.0, bottom: 8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Center(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(4),
                  child: Image(
                    image: AssetImage(modules.cover),
                    height: 175,
                  ),
                ),
              ),
              const SizedBox(height: 8),
              Text(
                modules.title,
                style:
                    const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 8),
              Text(
                modules.author,
                style:
                    const TextStyle(fontSize: 14, fontWeight: FontWeight.w200),
              ),
              const SizedBox(height: 16),
              Container(
                padding:
                    const EdgeInsets.symmetric(vertical: 12, horizontal: 20),
                width: 329,
                height: 64,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4),
                  color: const Color(0xFFEAF2FF),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Column(
                      children: [
                        Text(
                          'Skor',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text('4.5'),
                      ],
                    ),
                    VerticalDivider(thickness: 1, color: Colors.grey[300]),
                    const Column(
                      children: [
                        Text(
                          'Halaman',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text('550'),
                      ],
                    ),
                    VerticalDivider(thickness: 1, color: Colors.grey[300]),
                    const Column(
                      children: [
                        Text(
                          'Diunduh',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text('10k'),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 16),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Tentang Modul',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  Icon(
                    Icons.arrow_forward_ios,
                    size: 16,
                    color: Colors.blue,
                  )
                ],
              ),
              const SizedBox(height: 8),
              const Text(
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla viverra sollicitudin arcu a vulputate. Donec fermentum magna ut facilisis egestas. Sed eleifend elit et dolor hendrerit, vel laoreet urna imperdiet. Vestibulum dui orci, laoreet et arcu eu, commodo laoreet enim. Suspendisse finibus urna luctus commodo convallis. Nam neque felis, auctor ut mollis sed, iaculis ac mi. Phasellus commodo nulla odio, vitae malesuada elit vestibulum ac. Maecenas in turpis blandit nulla condimentum luctus. Sed lectus dui, ornare ac semper tincidunt, accumsan non neque. Etiam eu purus tellus. In in dolor id ipsum convallis rutrum quis nec metus. Etiam elementum neque at libero tristique, in consectetur nibh placerat.',
                textAlign: TextAlign.justify,
                maxLines: 10,
                overflow: TextOverflow.ellipsis,
              ),
              const SizedBox(height: 16),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Skor & Ulasan',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  Icon(
                    Icons.arrow_forward_ios,
                    size: 16,
                    color: Colors.blue,
                  )
                ],
              ),
              const Row(
                children: [
                  Text(
                    '4.5',
                    style: TextStyle(
                      fontSize: 48,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(width: 16),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Icon(Icons.star, color: Colors.amber),
                          Icon(Icons.star, color: Colors.amber),
                          Icon(Icons.star, color: Colors.amber),
                          Icon(Icons.star, color: Colors.amber),
                          Icon(Icons.star_half, color: Colors.amber),
                        ],
                      ),
                      Text('(6.8k Ulasan)'),
                    ],
                  ),
                ],
              ),
              Divider(
                thickness: 1,
                color: Colors.grey[300],
              ),
              const SizedBox(height: 16),
              const Text(
                'Beri Rating Modul Ini',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: List.generate(
                  5,
                  (index) => const Icon(
                    Icons.star_border,
                    size: 32,
                    color: Colors.blue,
                  ),
                ),
              ),
              const SizedBox(height: 16),
              GestureDetector(
                onTap: () {
                  // Add your onPressed code here!
                },
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
                  decoration: BoxDecoration(
                    border: Border.all(width: 1.0, color: Colors.blue),
                    borderRadius: BorderRadius.circular(4),
                  ),
                  child: const Text(
                    'Tulis Ulasan',
                    style: TextStyle(
                      color: Colors.blue,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 84, vertical: 15),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(4),
                      ),
                    ),
                    child: const Text(
                      'Unduh',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                      ),
                    ),
                  ),
                  const SizedBox(width: 16),
                  Container(
                    decoration: const BoxDecoration(
                      color: Colors.blue,
                      shape: BoxShape.circle,
                    ),
                    child: IconButton(
                      icon: const Icon(Icons.face, color: Colors.white),
                      onPressed: () {},
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
