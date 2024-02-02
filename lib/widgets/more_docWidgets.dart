import 'package:flutter/material.dart';

class MoreDocWidgets extends StatelessWidget {
  const MoreDocWidgets({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          Container(
            margin: const EdgeInsets.all(10),
            width: 146,
            height: 195,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: const Color(0xff3A4D7F),
            ),
            child: const Text(
              "THemsss",
              style: TextStyle(color: Colors.white),
            ),
          ),
          Container(
            margin: const EdgeInsets.all(10),
            width: 146,
            height: 192,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: const Color(0xff3A4D7F),
            ),
            child: const Text(
              "THemsss",
              style: TextStyle(color: Colors.white),
            ),
          ),
          Container(
            margin: const EdgeInsets.all(10),
            width: 146,
            height: 192,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: const Color(0xff3A4D7F),
            ),
            child: const Text(
              "THemsss",
              style: TextStyle(color: Colors.white),
            ),
          ),
          Container(
            margin: const EdgeInsets.all(10),
            width: 146,
            height: 192,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: const Color(0xff3A4D7F),
            ),
            child: const Text(
              "THemsss",
              style: TextStyle(color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
