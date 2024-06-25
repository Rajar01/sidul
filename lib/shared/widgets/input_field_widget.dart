import 'package:flutter/material.dart';

class HATextField extends StatelessWidget {
  final String title;
  final void Function(String) onChanged;
final bool isError;
final String errorText;

  const HATextField({
    required this.title,
    required this.onChanged,
    this.isError = false,
    this.errorText = "",
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyle(
            fontFamily: "Inter",
            fontWeight: FontWeight.w700,
            fontSize: 12,
            color: isError
                ? const Color.fromARGB(255, 255, 97, 109)
                : Colors.black,
          ),
        ),
        const SizedBox(height: 4),
        TextField(
          onChanged: onChanged,
          style: TextStyle(
            fontFamily: "Inter",
            fontWeight: FontWeight.w400,
            fontSize: 14,
            color: isError
                ? const Color.fromARGB(255, 255, 97, 109)
                : Colors.black,
          ),
          decoration: InputDecoration(
            contentPadding: const EdgeInsets.symmetric(
              horizontal: 16,
              vertical: 8,
            ),
            constraints: const BoxConstraints(
              minHeight: 48,
              maxHeight: 48,
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: isError
                    ? const Color.fromARGB(255, 255, 97, 109)
                    : Colors.black,
                width: isError ? 1.5 : 1,
              ),
              borderRadius: const BorderRadius.all(
                Radius.circular(4),
              ),
            ),
            border: const OutlineInputBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(4),
              ),
            ),
          ),
        ),
        const SizedBox(height: 8),
        isError
            ? Text(
                errorText,
                style: const TextStyle(
                  fontFamily: "Inter",
                  fontWeight: FontWeight.w400,
                  fontSize: 12,
                  color: Color.fromARGB(255, 255, 97, 109),
                ),
              )
            : Container()
      ],
    );
  }
}
