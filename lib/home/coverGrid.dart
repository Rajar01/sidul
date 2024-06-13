import 'package:flutter/material.dart';
import 'package:sidul/models/dataCover.dart';

class Covergrid extends StatelessWidget {
  final List<Data> photos;

  const Covergrid({Key? key, required this.photos}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final photo = photos.isNotEmpty
        ? photos[0]
        : null; // Ensure there's exactly one photo

    return Scaffold(
      body: GridView.count(
        crossAxisCount: 2,
        crossAxisSpacing: 8.0,
        mainAxisSpacing: 8.0,
        children: [
          if (photo != null)
            GestureDetector(
              onTap: () {
                // Define your onTap action here
                print('Tapped on ${photo.text}');
              },
              child: Card(
                elevation: 2.0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(4.0),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    ClipRRect(
                      borderRadius:
                          BorderRadius.vertical(top: Radius.circular(4.0)),
                      child: Image.asset(
                        photo.image,
                        height: 192.0,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Text(
                            photo.text,
                            style: const TextStyle(fontWeight: FontWeight.bold),
                            textAlign: TextAlign.center,
                          ),
                          SizedBox(height: 4.0),
                          Text(
                            "Author: ${photo.author}",
                            style: TextStyle(color: Colors.grey),
                            textAlign: TextAlign.center,
                          ),
                          SizedBox(height: 8.0),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
        ],
      ),
    );
  }
}
