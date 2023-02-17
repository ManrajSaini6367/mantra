// ignore_for_file: prefer_const_constructors, file_names


import 'package:flutter/material.dart';
import 'package:food_app/Screens/Onboarding/Getstart.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(milliseconds: 2500), () {
      
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => Getstart()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      body: Center(
        child: Image.asset("assets/Images/food_ApppLogo-removebg-preview.png",
            fit: BoxFit.cover),
      ),
    );
  }
}
