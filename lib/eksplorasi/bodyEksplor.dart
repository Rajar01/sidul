import 'package:flutter/material.dart';

class titleSection extends StatelessWidget {
  //class membuat judul
  final String title;

  titleSection({required this.title});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
        const Icon(
          Icons.arrow_forward_ios,
          size: 16,
          color: Colors.blue,
        )
      ],
    );
  }
}

class bookList extends StatelessWidget {
  //class untuk membuat list buku
  final List<Map<String, String>> books = [
    {
      'image': 'assets/img/Cover/cover1.jpg',
      'title': 'Valorant Guide To Radiant',
      'author': 'Dzauqi Legend'
    },
    {
      'image': 'assets/img/Cover/cover1.jpg',
      'title': 'Valorant Guide To Radiant',
      'author': 'Dzauqi Legend'
    },
    {
      'image': 'assets/img/Cover/cover1.jpg',
      'title': 'Valorant Guide To Radiant',
      'author': 'Dzauqi Legend'
    },
    {
      'image': 'assets/img/Cover/cover1.jpg',
      'title': 'Valorant Guide To Radiant',
      'author': 'Dzauqi Legend'
    },
    {
      'image': 'assets/img/Cover/cover1.jpg',
      'title': 'Valorant Guide To Radiant',
      'author': 'Dzauqi Legend'
    },
    {
      'image': 'assets/img/Cover/cover1.jpg',
      'title': 'Valorant Guide To Radiant',
      'author': 'Dzauqi Legend'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 256,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: books.length,
        itemBuilder: (context, index) {
          return bookCard(
            image: books[index]['image']!,
            title: books[index]['title']!,
            author: books[index]['author']!,
          );
        },
      ),
    );
  }
}

class bookCard extends StatelessWidget {
  // class untuk mengampilkan buku
  final String image;
  final String title;
  final String author;

  bookCard({required this.image, required this.title, required this.author});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 120,
      margin: const EdgeInsets.only(right: 16.0),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(4.0), color: Colors.white),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(4),
            child: Image.asset(
              image,
              height: 180,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 2.0, top: 4.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 14),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                Text(
                  author,
                  style: const TextStyle(
                      fontWeight: FontWeight.w200, fontSize: 12),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

class categoryList extends StatelessWidget {
  // class untuk membuat list kategori yangada
  final List<String> category = [
    'Matematika',
    'Pemrograman Web',
    'Pemrograman Mobile',
    'Grafika Komputer',
    'Bahasa Indonesia',
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: GridView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 3,
          crossAxisSpacing: 8,
          mainAxisSpacing: 8,
        ),
        itemCount: category.length,
        itemBuilder: (context, index) {
          return categoryCard(categories: category[index]);
        },
      ),
    );
  }
}

class categoryCard extends StatelessWidget {
  //sambung ke class atas
  final String categories;
  categoryCard({required this.categories});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: Colors.blue[50],
        borderRadius: BorderRadius.circular(8),
      ),
      child: Text(
        categories,
        style: TextStyle(color: Colors.blue),
      ),
    );
  }
}

class bodyEksplor extends StatelessWidget {
  const bodyEksplor({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            titleSection(title: 'Modul Teratas'),
            const SizedBox(height: 8),
            bookList(),
            titleSection(title: 'Unduhan teratas'),
            const SizedBox(height: 8),
            bookList(),
            titleSection(title: 'Kategori Pilihan Kamu'),
            const SizedBox(height: 8),
            categoryList(),
            SizedBox(height: 16),
            titleSection(title: 'Kategori Lainnya'),
            const SizedBox(height: 8),
            categoryList(),
          ],
        ),
      ),
    );
  }
}
