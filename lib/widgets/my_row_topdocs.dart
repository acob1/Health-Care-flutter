import 'package:flutter/material.dart';

import '../Screens/my_health_doc.dart';

class MyRowTopdocs extends StatelessWidget {
  const MyRowTopdocs({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Text(
          "Top Doctors",
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 25,
              color: Colors.white),
        ),
        TextButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => const MyHealthDoc()),
            );
          },
          child: const Text(
            "see all",
            style: TextStyle(fontSize: 15, color: Color(0xff6386E1)),
          ),
        ),
      ],
    );
  }
}

