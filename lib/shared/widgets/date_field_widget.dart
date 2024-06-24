import 'package:flutter/material.dart';

class HADateField extends StatefulWidget {
  final String title;
  final void Function() onTap;
  final TextEditingController dateFieldController;

  const HADateField({
    required this.title,
    required this.onTap,
    required this.dateFieldController,
    super.key,
  });

  @override
  State<HADateField> createState() => _HADateFieldState();
}

class _HADateFieldState extends State<HADateField> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.title,
          style: const TextStyle(
            fontFamily: "Inter",
            fontWeight: FontWeight.w700,
            fontSize: 12,
          ),
        ),
        const SizedBox(height: 4),
        TextField(
          controller: widget.dateFieldController,
          readOnly: true,
          onTap: widget.onTap,
          decoration: const InputDecoration(
            suffixIcon: Icon(Icons.date_range, size: 20),
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
