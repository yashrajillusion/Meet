import 'dart:async';
import 'package:flutter/material.dart';
import 'startup_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    Timer(const Duration(seconds: 2), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => const StartupScreen(),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(96, 80, 77, 77),
      body: Stack(
        children: [
          Center(
            child: Image.asset('assets/meet.png'),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 20),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Image.asset(
                    'assets/lock.png',
                    fit: BoxFit.scaleDown,
                    scale: 4,
                  ),
                  const SizedBox(height: 10),
                  const Text("100% Secure Meetup", style: TextStyle(fontWeight: FontWeight.w600),),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
