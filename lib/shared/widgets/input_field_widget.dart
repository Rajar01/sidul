import 'package:flutter/material.dart';

class HATextField extends StatelessWidget {
  final String title;
  final void Function(String) onChanged;

  const HATextField({
    required this.title,
    required this.onChanged,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: const TextStyle(
            fontFamily: "Inter",
            fontWeight: FontWeight.w700,
            fontSize: 12,
          ),
        ),
        const SizedBox(height: 4),
        TextField(
          onChanged: onChanged,
          decoration: const InputDecoration(
            contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            constraints: BoxConstraints(
              minHeight: 48,
              maxHeight: 48,
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(4),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
