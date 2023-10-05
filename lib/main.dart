import 'package:clone_newsapp/views/Onboardingscreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(Clone_newsapp());
}

class Clone_newsapp extends StatelessWidget {
  const Clone_newsapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Onboardingscreen(),
    );
  }
}
