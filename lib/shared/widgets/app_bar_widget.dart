import 'package:flutter/material.dart';

// ignore: non_constant_identifier_names
PreferredSize HAAppBar() {
  return PreferredSize(
    preferredSize: const Size.fromHeight(300),
    child: Padding(
      padding: const EdgeInsets.only(bottom: 0, right: 32, left: 32, top: 32),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                width: 32,
                height: 32,
                color: Colors.grey,
              ),
              const SizedBox(width: 16),
              const Text(
                "SIDUL",
                style: TextStyle(
                  fontFamily: "Inter",
                  fontWeight: FontWeight.w800,
                  fontSize: 14,
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              InkWell(
                customBorder: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(24),
                ),
                splashColor: Colors.grey.shade400,
                onTap: () {},
                child: Ink(
                  height: 36,
                  width: 36,
                  child: const Icon(Icons.search),
                ),
              ),
              const SizedBox(width: 4),
              InkWell(
                customBorder: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(24),
                ),
                splashColor: Colors.grey.shade400,
                onTap: () {},
                child: Ink(
                  height: 36,
                  width: 36,
                  child: const Icon(Icons.notifications),
                ),
              ),
              const SizedBox(width: 4),
              InkWell(
                customBorder: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(24),
                ),
                splashColor: Colors.grey.shade400,
                onTap: () {},
                child: Ink(
                  height: 36,
                  width: 36,
                  child: const Icon(Icons.settings),
                ),
              ),
            ],
          )
        ],
      ),
    ),
  );
}
