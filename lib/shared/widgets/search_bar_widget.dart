import 'package:flutter/material.dart';

class HASearchBar extends StatelessWidget {
  const HASearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: (_) {},
      decoration: const InputDecoration(
        suffixIcon: Icon(Icons.filter_alt),
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
    );
  }
}
