import 'package:flutter/material.dart';

class Live_End extends StatefulWidget {
  const Live_End({super.key});

  @override
  State<Live_End> createState() => _Live_EndState();
}

class _Live_EndState extends State<Live_End> {
  var h, w;
  @override
  Widget build(BuildContext context) {
    h = MediaQuery.of(context).size.height;
    w = MediaQuery.of(context).size.width;
    return Center(
        child: Container(
            width: w * 1,
            height: h * 0.32,
            child: AlertDialog(
              backgroundColor: Colors.transparent,
              content: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: const Color(0xffFFFFFF),
                ),
                height: h * 0.1925,
                width: w * 0.79,
                child: Column(
                  children: [
                    SizedBox(
                      height: h * 0.0325,
                    ),
                    const Text(
                      textAlign: TextAlign.center,
                      "Do you confirm that you\nleave this Live?",
                      style: TextStyle(fontSize: 17, color: Color(0xff000000)),
                    ),
                    SizedBox(
                      height: h * 0.05,
                    ),
                    Container(
                      height: h * 0.06,
                      decoration: const BoxDecoration(
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(8),
                              bottomRight: Radius.circular(8)),
                          color: Color(0xff59B8BE)),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 8, right: 8),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Text(
                              "Follow and Leave",
                              style: TextStyle(
                                  fontSize: 15, color: Color(0xffFFFFFF)),
                            ),
                            Text(
                              "Leave",
                              style: TextStyle(
                                  fontSize: 15, color: Color(0xffFFFFFF)),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )));
  }
}
