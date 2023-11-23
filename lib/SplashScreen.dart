import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'login.dart';

class splash extends StatefulWidget {
  const splash({super.key});

  @override
  State<splash> createState() => _splashState();
}

class _splashState extends State<splash> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 5), () {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Login()));
    });
  }
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Text(
            'AyurBot',
            style: TextStyle(
              fontSize: 35.sp,
              color: Colors.white,
              fontWeight: FontWeight.w900,
            ),
          )
        ),
        decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [Colors.lightGreenAccent,Colors.lightGreen,Colors.green.shade200,Colors.green.shade800],
              begin: Alignment.bottomLeft,
              end: Alignment.topRight
          )
        ),
      )
    );
  }
}
