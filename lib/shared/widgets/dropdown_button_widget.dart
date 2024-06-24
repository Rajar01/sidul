import 'package:flutter/material.dart';

class HADropdownButton extends StatelessWidget {
  final String title;
  final void Function(String?) onChanged;
  final List<String> items;
  final String value;

  const HADropdownButton({
    required this.title,
    required this.onChanged,
    required this.items,
    required this.value,
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
        InputDecorator(
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
          child: DropdownButtonHideUnderline(
            child: DropdownButton<String>(
              value: value,
              onChanged: onChanged,
              borderRadius: const BorderRadius.all(Radius.circular(4)),
              isExpanded: true,
              items: items
                  .map(
                    (item) => DropdownMenuItem<String>(
                      value: item,
                      child: Text(item),
                    ),
                  )
                  .toList(),
            ),
          ),
        ),
      ],
    );
  }
}
