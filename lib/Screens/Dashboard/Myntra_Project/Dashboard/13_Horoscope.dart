import 'package:flutter/material.dart';

class Horoscope1 extends StatefulWidget {
  const Horoscope1({super.key});

  @override
  State<Horoscope1> createState() => _Horoscope1State();
}

class _Horoscope1State extends State<Horoscope1> {
  int index = 0;
  var h, w;
  @override
  Widget build(BuildContext context) {
    h = MediaQuery.of(context).size.height;
    w = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading:const Padding(
          padding:  EdgeInsets.only(right: 19),
          child: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
        elevation: 1,
        centerTitle: true,
        title:const Text(
          'Horoscope',
          style: TextStyle(fontSize: 22, color: Color(0xff060219)),
        ),
        backgroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 13, right: 13, top: 19),
        child: ListView(
          physics:const BouncingScrollPhysics(),
          children: [
           const SizedBox(
              width: 6,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  "assets/Images/Group 1019@2x.png",
                  height: 85,
                  width: 85,
                ),
              const  SizedBox(
                  width: 17,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      "Aries",
                      style: TextStyle(fontSize: 20, color: Color(0xff333333)),
                    ),
                    SizedBox(
                      height: 9,
                    ),
                    Text(
                      "07 Feb - 07 Mar",
                      style: TextStyle(fontSize: 15, color: Color(0xff59B8BE)),
                    ),
                  ],
                )
              ],
            ),
           const SizedBox(
              height: 17,
            ),
            Container(
              width: w * 1,
              height: h * 0.05,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color:const Color(0xffE1FAFB),
                  border: Border.all(
                    color: const Color(0xff59B8BE),
                    width: 1,
                  )),
              child: Row(
                children: [
                  InkWell(
                    onTap: () {
                      setState(() {
                        index = 0;
                      });
                    },
                    child: Container(
                      width: w * 0.2305,
                      height: h * 1,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(6),
                        color:
                            index == 0 ?  const Color(0xff59B8BE) : Colors.transparent,
                      ),
                      child: Center(
                        child: Text(
                          "Today",
                          style: TextStyle(
                              color: index == 0
                                  ? const Color(0xffFFFFFF)
                                  : const Color(0xff000000),
                              fontSize: 16),
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        index = 1;
                      });
                    },
                    child: Container(
                      width: w * 0.2305,
                      height: h * 1,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(6),
                        color:
                            index == 1 ? const Color(0xff59B8BE) : Colors.transparent,
                      ),
                      child: Center(
                        child: Text(
                          "Weekly",
                          style: TextStyle(
                              color: index == 1
                                  ? const Color(0xffFFFFFF)
                                  : const Color(0xff000000),
                              fontSize: 15.9),
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        index = 2 ;
                      });
                    },
                    child: Container(
                      width: w * 0.2305,
                      height: h * 1,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(6),
                        color:
                            index == 2 ? const Color(0xff59B8BE) : Colors.transparent,
                      ),
                      child: Center(
                        child: Text(
                          "Monthly",
                          style: TextStyle(
                              color: index == 2
                                  ? const Color(0xffFFFFFF)
                                  : const Color(0xff000000),
                              fontSize: 14),
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        index = 3;
                      });
                    },
                    child: Container(
                      width: w * 0.2305,
                      height: h * 1,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(6),
                        color:
                            index == 3 ? const Color(0xff59B8BE) : Colors.transparent,
                      ),
                      child: Center(
                        child: Text(
                          "Yearly",
                          style: TextStyle(
                              color: index == 3
                                  ? const Color(0xffFFFFFF)
                                  : const Color(0xff000000),
                              fontSize: 16),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: h * 0.025,
            ),
            const Text(
              "Personal Life",
              style: TextStyle(fontSize: 18, color: Color(0xff59B8BE)),
            ),
            SizedBox(
              height: h * 0.0082,
            ),
           const Text(
              "Astrology can be defined in many ways but we would want to explain this as science which helps people in guiding them through their good/bad times of life and this is done based on various & different planetary positions and calculations.",
              style: TextStyle(fontSize: 15, color: Color(0xff333333)),
            ),
            SizedBox(
              height: h * 0.0085,
            ),
          const  Text(
              "Luch",
              style: TextStyle(fontSize: 18, color: Color(0xff59B8BE)),
            ),
            SizedBox(
              height: h * 0.0082,
            ),
          const  Text(
              "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.",
              style: TextStyle(fontSize: 15, color: Color(0xff333333)),
            ),
            SizedBox(
              height: h * 0.0090,
            ),
           const Text(
              "Health",
              style: TextStyle(fontSize: 18, color: Color(0xff59B8BE)),
            ),
            SizedBox(
              height: h * 0.0082,
            ),
            const Text(
              "Astrology can be defined in many ways but we would want to explain this as science which helps people in guiding them through their good/bad times of life and this is done based on various & different planetary positions and calculations.",
              style: TextStyle(fontSize: 15, color: Color(0xff333333)),
            ),
            SizedBox(
              height: h * 0.0085,
            ),
           const Text(
              "Profession",
              style: TextStyle(fontSize: 18, color: Color(0xff59B8BE)),
            ),
            SizedBox(
              height: h * 0.0082,
            ),
          const  Text(
              "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.",
              style: TextStyle(fontSize: 15, color: Color(0xff333333)),
            ),
            SizedBox(
              height: h * 0.0090,
            ),
           const Text(
              "Emotion",
              style: TextStyle(fontSize: 18, color: Color(0xff59B8BE)),
            ),
            SizedBox(
              height: h * 0.0082,
            ),
          const  Text(
              "Astrology can be defined in many ways but we would want to explain this as science which helps people in guiding them through their good/bad times of life and this is done based on various & different planetary positions and calculations.",
              style: TextStyle(fontSize: 15, color: Color(0xff333333)),
            ),
            SizedBox(
              height: h * 0.0085,
            ),
          const  Text(
              "Travel",
              style: TextStyle(fontSize: 18, color: Color(0xff59B8BE)),
            ),
            SizedBox(
              height: h * 0.0082,
            ),
          const  Text(
              "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.",
              style: TextStyle(fontSize: 15, color: Color(0xff333333)),
            ),
            SizedBox(
              height: h * 0.023,
            ),
          ],
        ),
      ),
    );
  }
}
