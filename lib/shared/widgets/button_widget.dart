import 'package:flutter/material.dart';

class HAButton extends StatelessWidget {
  final String text;
  final void Function() onPressed;

  const HAButton({
    required this.text,
    required this.onPressed,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(4),
            ),
          ),
          backgroundColor: const Color.fromARGB(255, 0, 111, 253),
          foregroundColor: Colors.white,
          textStyle: const TextStyle(
            fontFamily: "Inter",
            fontWeight: FontWeight.w600,
            fontSize: 12,
          ),
        ),
        onPressed: onPressed,
        child: Text(text),
      ),
    );
  }
}
