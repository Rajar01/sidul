import 'package:flutter/material.dart';
import 'package:flutter_verification_code/flutter_verification_code.dart';

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
    final theme = Theme.of(context);

    return Scaffold(
      appBar: AppBar(
        leading: const BackButtonIcon(),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              "Konfirmasi Kode",
              style: theme.textTheme.headlineSmall,
            ),
            const SizedBox(height: 2),
            Text(
              "Silahkan masukkan kode yang telah kami kirim ke email Anda untuk melanjutkan proses ini.",
              style: theme.textTheme.bodyMedium,
            ),
            const SizedBox(height: 24),
            Align(
              alignment: Alignment.center,
              child: VerificationCode(
                keyboardType: TextInputType.number,
                length: 4,
                fullBorder: true,
                itemSize: 48,
                margin: const EdgeInsets.symmetric(horizontal: 16),
                digitsOnly: true,
                padding: const EdgeInsets.all(4),
                onCompleted: (String value) {},
                onEditing: (bool value) {},
              ),
            ),
            const SizedBox(height: 24),
            SizedBox(
              width: double.infinity,
              child: FilledButton(
                onPressed: () {},
                child: const Text("Konfirmasi"),
              ),
            ),
            const SizedBox(height: 4),
            SizedBox(
              width: double.infinity,
              child: OutlinedButton(
                onPressed: () {},
                child: const Text("Kirim Ulang Kode"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
