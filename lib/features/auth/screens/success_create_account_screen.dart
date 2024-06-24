import 'package:flutter/material.dart';
import 'package:sidul/shared/widgets/button_widget.dart';

class SuccessCreateAccountScreen extends StatelessWidget {
  const SuccessCreateAccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 32),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Image(
                image: AssetImage(
                    "assets/images/registration_success_ilustration.png"),
              ),
              const SizedBox(height: 32),
              const Column(
                children: [
                  Text(
                    "Pendaftaran Berhasil",
                    style: TextStyle(
                      letterSpacing: 0.5,
                      fontFamily: "Inter",
                      fontWeight: FontWeight.w900,
                      fontSize: 24,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    "Akun anda telah berhasil dibuat",
                    style: TextStyle(
                      fontFamily: "Inter",
                      fontWeight: FontWeight.w400,
                      fontSize: 16,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 32),
              HAButton(text: "Lanjutkan", onPressed: () {})
            ],
          ),
        ),
      ),
    );
  }
}
