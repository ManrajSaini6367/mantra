import 'package:flutter/material.dart';

import '34_live_end.dart';

class Astro_Live extends StatefulWidget {
  const Astro_Live({super.key});

  @override
  State<Astro_Live> createState() => _Astro_LiveState();
}

class _Astro_LiveState extends State<Astro_Live> {
  var h, w;
  @override
  Widget build(BuildContext context) {
    h = MediaQuery.of(context).size.height;
    w = MediaQuery.of(context).size.width;
    return Scaffold(
      floatingActionButton: const Padding(
        padding: EdgeInsets.only(bottom: 50),
        child: CircleAvatar(
          radius: 35,
          backgroundColor: Color(0xff59B8BE),
          child: Icon(
            Icons.call,
            color: Color(0xffFFFFFF),
          ),
        ),
      ),
      body: InkWell(
        onTap: () {
          showDialog(
            context: context,
            builder: (context) => Live_End(),
          );
        },
        child: Container(
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/Images/Group 1389.png"),
                  fit: BoxFit.cover)),
          child: Padding(
            padding: const EdgeInsets.only(left: 13, right: 13),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  children: [
                    SizedBox(
                      height: h * 0.0625,
                    ),
                    Stack(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              height: h * 0.058,
                              width: w * 0.448,
                              decoration: BoxDecoration(
                                  color:
                                      const Color(0xffFFFFFF).withOpacity(0.5),
                                  borderRadius: BorderRadius.circular(30)),
                              child: Padding(
                                padding:
                                    const EdgeInsets.only(left: 5, right: 5),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Image.asset(
                                      "assets/Images/NoPath - Copy (8)@2x.png",
                                      height: h * 0.0375,
                                      width: w * 0.0831,
                                    ),
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        const Text(
                                          "Astro Dinesh",
                                          style: TextStyle(
                                              fontSize: 12,
                                              color: Color(0xfFFFFFFF),
                                              decoration: TextDecoration.none),
                                        ),
                                        Row(
                                          children: [
                                            Image.asset(
                                                "assets/Images/Icon awesome-fire.png"),
                                            const Text(
                                              "148",
                                              style: TextStyle(
                                                decoration: TextDecoration.none,
                                                fontSize: 12,
                                                color: Color(0xfFFFFFFF),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                    Image.asset("assets/Images/Group 1322.png")
                                  ],
                                ),
                              ),
                            ),
                            Column(
                              children: [
                                SizedBox(
                                  height: h * 0.0125,
                                ),
                                Image.asset("assets/Images/Group 1350.png"),
                                SizedBox(
                                  height: h * 0.025,
                                ),
                                Image.asset("assets/Images/Group 1496.png")
                              ],
                            )
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 9, left: 170),
                          child: CircleAvatar(
                            radius: 14,
                            backgroundColor: const Color(0xffFFFFFF),
                            child: Image.asset("assets/Images/1.png"),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 9, left: 190),
                          child: CircleAvatar(
                            radius: 14,
                            backgroundColor: const Color(0xffFFFFFF),
                            child: Image.asset("assets/Images/1.png"),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 9, left: 210),
                          child: CircleAvatar(
                            radius: 14,
                            backgroundColor: const Color(0xffFFFFFF),
                            child: Image.asset("assets/Images/1.png"),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 9, left: 230),
                          child: CircleAvatar(
                            radius: 14,
                            backgroundColor: const Color(0xffFFFFFF),
                            child: Image.asset("assets/Images/1.png"),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Stack(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CircleAvatar(
                              radius: 14,
                              backgroundColor: const Color(0xffFFFFFF),
                              child: Image.asset("assets/Images/1.png"),
                            ),
                            SizedBox(
                              width: w * 0.022,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text(
                                  "Raghu Sharma",
                                  style: TextStyle(
                                      fontSize: 12,
                                      color: Color(0xffD7D7D7),
                                      decoration: TextDecoration.none),
                                ),
                                Text(
                                  "Join the Live",
                                  style: TextStyle(
                                      fontSize: 14,
                                      color: Color(0xffFFFFFF),
                                      decoration: TextDecoration.none),
                                ),
                                Text(
                                  "Neha",
                                  style: TextStyle(
                                      fontSize: 12,
                                      color: Color(0xffD7D7D7),
                                      decoration: TextDecoration.none),
                                ),
                                Text(
                                  "Neha mandloi 7/11/95\nAngel guidance for today",
                                  style: TextStyle(
                                      fontSize: 14,
                                      color: Color(0xffFFFFFF),
                                      decoration: TextDecoration.none),
                                ),
                              ],
                            )
                          ],
                        ),
                        SizedBox(
                          height: h * 0.016,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CircleAvatar(
                              radius: 14,
                              backgroundColor: const Color(0xffFFFFFF),
                              child: Image.asset("assets/Images/1.png"),
                            ),
                            SizedBox(
                              width: w * 0.022,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text(
                                  "Priyanka Shahi",
                                  style: TextStyle(
                                      fontSize: 12,
                                      color: Color(0xffD7D7D7),
                                      decoration: TextDecoration.none),
                                ),
                                Text(
                                  "Hello ji",
                                  style: TextStyle(
                                      fontSize: 14,
                                      color: Color(0xffFFFFFF),
                                      decoration: TextDecoration.none),
                                ),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(
                          height: h * 0.02875,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              height: h * 0.05,
                              width: w * 0.354,
                              decoration: BoxDecoration(
                                  color:
                                      const Color(0xffFFFFFF).withOpacity(0.5),
                                  borderRadius: BorderRadius.circular(30)),
                              child: Padding(
                                padding:
                                    const EdgeInsets.only(left: 5, right: 5),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Image.asset(
                                      "assets/Images/Icon ionic-md-chatbubbles.png",
                                    ),
                                    const Text(
                                      "Say hi",
                                      style: TextStyle(
                                          fontSize: 14,
                                          color: Color(0xfFFFFFFF),
                                          decoration: TextDecoration.none),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Image.asset("assets/Images/Group 1330.png"),
                            Image.asset("assets/Images/Group 1331.png"),
                            Image.asset("assets/Images/Group 1332.png"),
                            Image.asset("assets/Images/Group 1333.png")
                          ],
                        ),
                        SizedBox(
                          height: h * 0.01,
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
