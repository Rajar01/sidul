import 'package:flutter/material.dart';

class HAButton extends StatelessWidget {
  final String text;
  final void Function() onPressed;
  final Color backgroundColor;
  final Color foregroundColor;
  final Color shadowColor;
  final BorderSide borderSide;
  final double width;

  const HAButton({
    required this.text,
    required this.onPressed,
    this.backgroundColor = const Color.fromARGB(255, 0, 111, 253),
    this.foregroundColor = Colors.white,
    this.shadowColor = Colors.transparent,
    this.borderSide = BorderSide.none,
    this.width = double.infinity,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: 48,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            side: borderSide,
            borderRadius: const BorderRadius.all(
              Radius.circular(4),
            ),
          ),
          elevation: 0,
          shadowColor: shadowColor,
          backgroundColor: backgroundColor,
          foregroundColor: foregroundColor,
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
