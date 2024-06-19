import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class bodyDownloadEmpty extends StatelessWidget {
  const bodyDownloadEmpty({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(
                'assets/img/download.svg',
                fit: BoxFit.cover,
                width: 260,
              ),
              const SizedBox(height: 32),
              const Text(
                'Kosong',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
              const SizedBox(height: 16),
              const Text(
                'Anda tidak mendownload apa pun saat ini',
                style: TextStyle(
                  fontWeight: FontWeight.w300,
                  fontSize: 14,
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
