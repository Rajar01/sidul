import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class bookmarkItem {
  final String image;
  final String title;
  final String author;
  final String rating;
  final String category;

  bookmarkItem({
    required this.image,
    required this.title,
    required this.author,
    required this.rating,
    required this.category,
  });
}

final List<bookmarkItem> bookmarkItems = [
  bookmarkItem(
    image: 'assets/img/Cover/cover1.jpg',
    title: 'Valorant Guide To Radiant: Best Guide 1990',
    author: 'M Diponegoro',
    rating: '4.5',
    category: 'Matematika',
  ),
  bookmarkItem(
    image: 'assets/img/Cover/cover1.jpg',
    title: 'Valorant Guide To Radiant: Best Guide 1990',
    author: 'M Diponegoro',
    rating: '4.5',
    category: 'Matematika',
  ),
  bookmarkItem(
    image: 'assets/img/Cover/cover1.jpg',
    title: 'Valorant Guide To Radiant: Best Guide 1990',
    author: 'M Diponegoro',
    rating: '4.5',
    category: 'Matematika',
  ),
  bookmarkItem(
    image: 'assets/img/Cover/cover1.jpg',
    title: 'Valorant Guide To Radiant: Best Guide 1990',
    author: 'M Diponegoro',
    rating: '4.5',
    category: 'Matematika',
  ),
  bookmarkItem(
    image: 'assets/img/Cover/cover1.jpg',
    title: 'Valorant Guide To Radiant: Best Guide 1990',
    author: 'M Diponegoro',
    rating: '4.5',
    category: 'Matematika',
  ),
  bookmarkItem(
    image: 'assets/img/Cover/cover1.jpg',
    title: 'Valorant Guide To Radiant: Best Guide 1990',
    author: 'M Diponegoro',
    rating: '4.5',
    category: 'Matematika',
  ),
  bookmarkItem(
    image: 'assets/img/Cover/cover1.jpg',
    title: 'Valorant Guide To Radiant: Best Guide 1990',
    author: 'M Diponegoro',
    rating: '4.5',
    category: 'Matematika',
  ),
  bookmarkItem(
    image: 'assets/img/Cover/cover1.jpg',
    title: 'Valorant Guide To Radiant: Best Guide 1990',
    author: 'M Diponegoro',
    rating: '4.5',
    category: 'Matematika',
  ),
  bookmarkItem(
    image: 'assets/img/Cover/cover1.jpg',
    title: 'Valorant Guide To Radiant: Best Guide 1990',
    author: 'M Diponegoro',
    rating: '4.5',
    category: 'Matematika',
  ),
];

class bodyBookmark extends StatefulWidget {
  const bodyBookmark({Key? key}) : super(key: key);

  @override
  _bodyBookmarkState createState() => _bodyBookmarkState();
}

class _bodyBookmarkState extends State<bodyBookmark> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(0.0),
        child: ListView.builder(
          itemCount: bookmarkItems.length,
          itemBuilder: (context, index) {
            return Card(
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 100,
                      height: 150,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        image: DecorationImage(
                          image: AssetImage(bookmarkItems[index].image),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    const SizedBox(width: 16),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            bookmarkItems[index].title,
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          ),
                          const SizedBox(height: 8),
                          Row(
                            children: [
                              const Icon(
                                Icons.person,
                                size: 16,
                                color: Colors.blue,
                              ),
                              const SizedBox(width: 4),
                              Expanded(
                                child: Text(
                                  bookmarkItems[index].author,
                                  style: const TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w200,
                                  ),
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 8),
                          Row(
                            children: [
                              const Icon(
                                Icons.star,
                                size: 16,
                                color: Colors.blue,
                              ),
                              const SizedBox(width: 4),
                              Text(
                                bookmarkItems[index].rating,
                                style: const TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w200,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 8),
                          Container(
                            padding: const EdgeInsets.symmetric(
                              vertical: 4,
                              horizontal: 8,
                            ),
                            decoration: BoxDecoration(
                              color: const Color(0xFFEAF2FF),
                              borderRadius: BorderRadius.circular(4),
                            ),
                            child: Text(
                              bookmarkItems[index].category,
                              style: const TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w600,
                                color: Colors.blue,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: 8),
                    GestureDetector(
                      onTap: () {
                        showCupertinoModalPopup(
                          context: context,
                          builder: (BuildContext context) =>
                              CupertinoActionSheet(
                            actions: <Widget>[
                              CupertinoActionSheetAction(
                                child: const Text('Hapus dari Bookmark',
                                    style: TextStyle(color: Colors.blue)),
                                onPressed: () {
                                  // Aksi ketika Hapus dari Bookmark dipilih
                                  Navigator.pop(context, 'delete');
                                },
                              ),
                              CupertinoActionSheetAction(
                                child: const Text('Tentang Modul',
                                    style: TextStyle(color: Colors.grey)),
                                onPressed: () {
                                  // Aksi ketika Tentang Modul dipilih
                                  Navigator.pop(context, 'info');
                                },
                              ),
                              CupertinoActionSheetAction(
                                child: const Text('Download',
                                    style: TextStyle(color: Colors.grey)),
                                onPressed: () {
                                  // Aksi ketika Download dipilih
                                  Navigator.pop(context, 'download');
                                },
                              ),
                            ],
                          ),
                        );
                      },
                      child: const Icon(Icons.more_vert, size: 20),
                    ),
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
