import 'package:flutter/material.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Center(
        child: Container(
          height: double.infinity,
          width: double.infinity,
          // decoration: const BoxDecoration(
          //   color: AppRes.logoBgColor,
          // ),
          child: Center(child: Image.asset("assets/images/logo.png",height: 100,width: 100,)),
        ),
      ),
    );
  }
}
