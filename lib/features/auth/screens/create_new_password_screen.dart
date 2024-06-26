import 'package:flutter/material.dart';

class CreateNewPasswordScreen extends StatefulWidget {
  const CreateNewPasswordScreen({super.key});

  @override
  State<CreateNewPasswordScreen> createState() =>
      _CreateNewPasswordScreenState();
}

class _CreateNewPasswordScreenState extends State<CreateNewPasswordScreen> {
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
                  "Password Baru",
                  style: textTheme.titleLarge,
                ),
                const SizedBox(height: 4),
                Text(
                  "Password baru Anda harus berbeda dengan password yang digunakan sebelumnya.",
                  style: textTheme.titleSmall,
                ),
              ],
            ),
            const SizedBox(height: 32),
            Column(
              children: [
                TextFormField(
                  obscureText: true,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "Password",
                    suffixIcon: Icon(Icons.visibility_off),
                  ),
                ),
                const SizedBox(height: 16),
                TextFormField(
                  obscureText: true,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "Konfirmasi Password",
                    suffixIcon: Icon(Icons.visibility_off),
                  ),
                ),
                const SizedBox(height: 32),
                SizedBox(
                  width: double.infinity,
                  height: 48,
                  child: FilledButton(
                    style: FilledButton.styleFrom(
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(4),
                        ),
                      ),
                    ),
                    onPressed: () {},
                    child: const Text("Lanjutkan"),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
