// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:food_app/Resueable/Utils.dart';
import 'package:food_app/Screens/Onboarding/LongIn_Number.dart';

class Getstart extends StatefulWidget {
  const Getstart({super.key});

  @override
  State<Getstart> createState() => _GetstartState();
}

class _GetstartState extends State<Getstart> {
  int index = 0;

  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(milliseconds: 1000), () {
      index = 1;
      setState(() {});
    });
    Future.delayed(Duration(milliseconds: 2000), () {
      index = 2;
      setState(() {});
    });

    Future.delayed(Duration(milliseconds: 3000), () {
      index = 1;
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Image.asset('images/background.png').color,
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(
                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQhy3psQ_VHGvxpbxp3IAi3u2TnxOd7otBGLFv4gdWl&s"))),
        child: Padding(
          padding: const EdgeInsets.only(left: 25, right: 25, top: 530),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              customtext("Swiggy", Colors.white, 35, FontWeight.bold,
                  FontStyle.normal),
              SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  customtext(
                      "Food",
                      Colors.white,
                      25,
                      index == 0 ? FontWeight.bold : FontWeight.normal,
                      FontStyle.normal),
                  customcontainer(
                      7, 7, Color.fromARGB(255, 248, 32, 4), BoxShape.circle),
                  customtext(
                      "Instamart",
                      Colors.white,
                      25,
                      index == 1 ? FontWeight.bold : FontWeight.normal,
                      FontStyle.normal),
                  customcontainer(
                      7, 7, Color.fromARGB(255, 248, 32, 4), BoxShape.circle),
                  customtext(
                      "Genie",
                      Colors.white,
                      25,
                      index == 2 ? FontWeight.bold : FontWeight.normal,
                      FontStyle.normal),
                ],
              ),
              SizedBox(height: 15),
              const Divider(
                color: Colors.white,
              ),
              SizedBox(height: 15),
              customtext("Get groceries in 15-30 mins", Colors.white, 23,
                  FontWeight.bold, FontStyle.normal),
              SizedBox(height: 25),
              custombutton(() {
                Navigator.push(context,
                    MaterialPageRoute(builder: ((context) => LongIN_Number())));
              },
                  const Color.fromARGB(255, 216, 60, 33),
                  50,
                  400,
                  customtext("Get started", Colors.white, 20, FontWeight.normal,
                      FontStyle.normal),
                  BorderRadius.circular(10))
            ],
          ),
        ),
      ),
    );
  }
}
