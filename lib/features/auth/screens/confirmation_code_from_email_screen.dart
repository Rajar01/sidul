import 'package:flutter/material.dart';

class ConfirmationCodeFromEmailScreen extends StatefulWidget {
  const ConfirmationCodeFromEmailScreen({super.key});

  @override
  State<ConfirmationCodeFromEmailScreen> createState() =>
      _ConfirmationCodeFromEmailScreenState();
}

class _ConfirmationCodeFromEmailScreenState
    extends State<ConfirmationCodeFromEmailScreen> {
  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(32),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Konfirmasi Kode",
                  style: textTheme.titleLarge,
                ),
                const SizedBox(height: 4),
                Text(
                  "Silahkan masukkan kode yang telah kami kirim ke email Anda untuk melanjutkan proses ini.",
                  style: textTheme.titleSmall,
                ),
              ],
            ),
            const SizedBox(height: 48),
            // TODO implement only accept one number in each number text field
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 48,
                  height: 48,
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                    ),
                    keyboardType: TextInputType.number,
                  ),
                ),
                SizedBox(width: 32),
                SizedBox(
                  width: 48,
                  height: 48,
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                    ),
                    keyboardType: TextInputType.number,
                  ),
                ),
                SizedBox(width: 32),
                SizedBox(
                  width: 48,
                  height: 48,
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                    ),
                    keyboardType: TextInputType.number,
                  ),
                ),
                SizedBox(width: 32),
                SizedBox(
                  width: 48,
                  height: 48,
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                    ),
                    keyboardType: TextInputType.number,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 48),
            Column(
              children: [
                SizedBox(
                  width: double.infinity,
                  height: 48,
                  child: FilledButton(
                    onPressed: () {},
                    style: FilledButton.styleFrom(
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(4),
                        ),
                      ),
                    ),
                    child: const Text(
                      "Konfirmasi",
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                SizedBox(
                  width: double.infinity,
                  height: 48,
                  child: OutlinedButton(
                    onPressed: () {},
                    style: FilledButton.styleFrom(
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(4),
                        ),
                      ),
                    ),
                    child: const Text(
                      "Kirim Ulang Kode",
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
