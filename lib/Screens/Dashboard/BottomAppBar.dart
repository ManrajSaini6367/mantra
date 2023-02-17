import 'package:flutter/material.dart';
import 'package:food_app/Resueable/Utils.dart';

class BottomApp extends StatefulWidget {
  const BottomApp({
    super.key,
  });

  @override
  State<BottomApp> createState() => _BottomAppState();
}

class _BottomAppState extends State<BottomApp> {
  int currentendex = 0;
  @override
  Widget build(BuildContext context) {
    var navigationpage;
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        elevation: 10,
        currentIndex: currentendex,
        onTap: (index) {
          setState(() {
            currentendex = index;
          });
        },
        items: [
          customBottomItem(
              Image.asset(
                "assets/Images/Food.png",
                height: 20,
                width: 20,
              ),
              "Home"),
          customBottomItem(
              Image.asset(
                "assets/Images/cutlery.png",
                height: 20,
                width: 20,
              ),
              "Dineout"),
          customBottomItem(
              Image.asset(
                "assets/Images/healthy-food(1).png",
                height: 20,
                width: 20,
              ),
              "Genie"),
        ],
      ),
    );
  }
}
