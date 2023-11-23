import 'package:flutter/material.dart';
import 'package:ayurveda_chatbot/main.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

import 'login.dart';
import 'main2.dart';

class SplashScreen extends StatefulWidget {
  // ignore: use_key_in_widget_constructors
  const SplashScreen({Key? key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 2)).then((value) {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => const Login()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image(
              image: AssetImage('assets/splashicon.png'),
              width: 150,
            ),
            SizedBox(height: 20),
            Text(
              'Ayurveda Bot',
              style: TextStyle(
                fontFamily: 'Poppins',
                color: Color.fromRGBO(28, 82, 126, 1),
                fontSize: 30,
              ),
            ),
            SizedBox(height: 10),
            Text(
              'Unlock Ayurvedic Wisdom with AyurvedaBot',
              style: TextStyle(
                fontFamily: 'Poppins',
                color: Color.fromRGBO(28, 82, 126, 1),
                fontSize: 16,
              ),
            ),
            SizedBox(height: 50),
            SpinKitFadingCircle(
              color: Color.fromRGBO(28, 82, 126, 1),
              size: 50.0,
            ),
          ],
        ),
      ),
    );
  }
}
