import 'package:flutter/material.dart';

class SpelashScreen extends StatefulWidget {
  const SpelashScreen({super.key});

  @override
  State<SpelashScreen> createState() => _SpelashScreenState();
}

class _SpelashScreenState extends State<SpelashScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Image(image: AssetImage("assets/dada.png")),
      ),
    );
  }
}
