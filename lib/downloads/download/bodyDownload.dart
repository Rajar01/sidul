import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class DownloadsItem {
  final String icon;
  final String title;
  final String size;

  DownloadsItem({
    required this.icon,
    required this.title,
    required this.size,
  });

  static final List<DownloadsItem> downloadItems = [
    DownloadsItem(
      icon: 'assets/img/Cover/cover1.jpg',
      title: 'Valorant Guide To Radiant: Best Guide 1990',
      size: 'Ukuran : 1,4 MB',
    ),
    DownloadsItem(
      icon: 'assets/img/Cover/cover1.jpg',
      title: 'Valorant Guide To Radiant: Best Guide 1990',
      size: 'Ukuran : 1,4 MB',
    ),
    DownloadsItem(
      icon: 'assets/img/Cover/cover1.jpg',
      title: 'Valorant Guide To Radiant: Best Guide 1990',
      size: 'Ukuran : 1,4 MB',
    ),
    DownloadsItem(
      icon: 'assets/img/Cover/cover1.jpg',
      title: 'Valorant Guide To Radiant: Best Guide 1990',
      size: 'Ukuran : 1,4 MB',
    ),
    DownloadsItem(
      icon: 'assets/img/Cover/cover1.jpg',
      title: 'Valorant Guide To Radiant: Best Guide 1990',
      size: 'Ukuran : 1,4 MB',
    ),
    // Add more items if needed
  ];
}

class bodyDownload extends StatefulWidget {
  const bodyDownload({Key? key}) : super(key: key);

  @override
  State<bodyDownload> createState() => _bodyDownloadState();
}

class _bodyDownloadState extends State<bodyDownload> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
          itemCount: DownloadsItem.downloadItems.length,
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
                          image: AssetImage(
                              DownloadsItem.downloadItems[index].icon),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    const SizedBox(width: 16),
                    Expanded(
                      child: Column(
                        crossAxisAlignment:
                            CrossAxisAlignment.start, // Align text to the start
                        children: [
                          Text(
                            DownloadsItem.downloadItems[index].title,
                            style: const TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          ),
                          const SizedBox(height: 8),
                          Text(
                            DownloadsItem.downloadItems[index].size,
                            style: const TextStyle(
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(width: 8),
                    GestureDetector(
                      onTap: () {
                        showCupertinoModalPopup(
                          context: context,
                          builder: (BuildContext context) =>
                              CupertinoActionSheet(
                            actions: <Widget>[
                              CupertinoActionSheetAction(
                                child: const Text('Hapus dari download',
                                    style: TextStyle(color: Colors.blue)),
                                onPressed: () {
                                  // Aksi ketika Hapus dari Bookmark dipilih
                                  Navigator.pop(context, 'delete');
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
