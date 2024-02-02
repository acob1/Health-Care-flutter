import 'package:flutter/material.dart';

class MyHealthDoc extends StatelessWidget {
  const MyHealthDoc({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff23355F),
      appBar: AppBar(
        title: const Text('Top Doctors'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text('Go back!'),
        ),
      ),
    );
    ;
  }
}
