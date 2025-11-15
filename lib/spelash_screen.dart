import 'package:flutter/material.dart';

import 'login_screen.dart';

class SpelashScreen extends StatefulWidget {
  const SpelashScreen({super.key});

  @override
  State<SpelashScreen> createState() => _SpelashScreenState();
}

class _SpelashScreenState extends State<SpelashScreen> {
void initState(){
  super.initState();
  Future.delayed(Duration(seconds: 3),(){
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>LoginScreen()));
  }
  );
}

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
