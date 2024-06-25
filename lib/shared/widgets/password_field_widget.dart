import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sidul/shared/providers/app_state_provider.dart';

class HAPasswordField extends ConsumerStatefulWidget {
  final String title;
  final void Function(String) onChanged;
  final bool isError;
  final String errorText;

  const HAPasswordField({
    required this.title,
    required this.onChanged,
    super.key,
    this.isError = false,
    this.errorText = "",
  });

  @override
  ConsumerState<HAPasswordField> createState() => _HAPasswordFieldState();
}

class _HAPasswordFieldState extends ConsumerState<HAPasswordField> {
  @override
  Widget build(BuildContext context) {
    final bool isPasswordFieldVisible =
        ref.watch(appStateProvider)["isPasswordFieldVisible"];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.title,
          style: TextStyle(
            fontFamily: "Inter",
            fontWeight: FontWeight.w700,
            fontSize: 12,
            color: widget.isError
                ? const Color.fromARGB(255, 255, 97, 109)
                : Colors.black,
          ),
        ),
        const SizedBox(height: 4),
        TextField(
          onChanged: widget.onChanged,
          style: TextStyle(
            fontFamily: "Inter",
            fontWeight: FontWeight.w400,
            fontSize: 14,
            color: widget.isError
                ? const Color.fromARGB(255, 255, 97, 109)
                : Colors.black,
          ),
          obscureText: !isPasswordFieldVisible,
          decoration: InputDecoration(
            suffixIcon: GestureDetector(
              child: Icon(
                isPasswordFieldVisible
                    ? Icons.visibility
                    : Icons.visibility_off_outlined,
                size: 20,
                color: widget.isError
                    ? const Color.fromARGB(255, 255, 97, 109)
                    : Colors.black,
              ),
              onTap: () async {
                if (isPasswordFieldVisible) {
                  ref.read(appStateProvider.notifier).hidePassword();
                } else {
                  ref.read(appStateProvider.notifier).showPassword();
                }
              },
            ),
            contentPadding:
                const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            constraints: const BoxConstraints(
              minHeight: 48,
              maxHeight: 48,
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: widget.isError
                    ? const Color.fromARGB(255, 255, 97, 109)
                    : Colors.black,
                width: widget.isError ? 1.5 : 1,
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
        widget.isError
            ? Text(
                widget.errorText,
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
