// lib/screens/who/who_screen.dart

import 'package:flutter/material.dart';
import 'who_field.dart';

class WhoScreen extends StatelessWidget {
  const WhoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: WhoField(),
      ),
    );
  }
}
