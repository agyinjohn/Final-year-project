import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key});

  @override
  Widget build(BuildContext context) {
    final fieldDecoration = InputDecoration(
        enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
    ));
    return const TextField();
  }
}
