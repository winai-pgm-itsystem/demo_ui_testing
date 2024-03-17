import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class MascotScreen extends StatefulWidget {
  const MascotScreen({super.key});

  @override
  State<MascotScreen> createState() => _MascotScreenState();
}

class _MascotScreenState extends State<MascotScreen> {
  final bool isCheck = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(),
      body: Center(
        child: LottieBuilder.asset(
          'assets/animations/jumps_bomb.json',
          repeat: true,
          reverse: true,
        ),
      ),
    );
  }
}
