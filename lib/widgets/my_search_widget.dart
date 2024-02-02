import 'package:flutter/material.dart';

class MySearchWidget extends StatelessWidget {
  const MySearchWidget({
    super.key,
    required this.searchName,
  });

  final TextEditingController searchName;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: searchName,
      decoration: InputDecoration(
          focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(
              color: Color(0xff3A4D7F),
            ),
          ),
          suffixIcon: const Icon(
            Icons.search,
            color: Colors.white,
          ),
          fillColor: const Color(0xff3A4D7F),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12)),
          hintText: 'e.g what can we do for you',
          hintStyle: const TextStyle(
              color: Color.fromARGB(255, 202, 202, 202)),
          labelText: 'How can I help?',
          labelStyle: const TextStyle(color: Colors.white)),
    );
  }
}
