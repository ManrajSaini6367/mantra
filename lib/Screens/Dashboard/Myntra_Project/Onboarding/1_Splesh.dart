import 'package:flutter/material.dart';

class Splesh extends StatefulWidget {
  const Splesh({super.key});

  @override
  State<Splesh> createState() => _SpleshState();
}

class _SpleshState extends State<Splesh> {
  var h, w;
  @override
  Widget build(BuildContext context) {
    h = MediaQuery.of(context).size.height;
    w = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        height: h * 1,
        width: w * 1,
        color: const Color(0xff59B8BE),
        // ignore: avoid_unnecessary_containers
        child: Container(child: Image.asset("assets/Images/1mantra.png")),
      ),
    );
  }
}
