import 'package:flutter/material.dart';

class Horoscope extends StatefulWidget {
  const Horoscope({super.key});

  @override
  State<Horoscope> createState() => _HoroscopeState();
}

class _HoroscopeState extends State<Horoscope> {
  var h, w;
  @override
  Widget build(BuildContext context) {
    h = MediaQuery.of(context).size.height;
    w = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Color(0xffE1FAFB),
      appBar: AppBar(
        leading:const Padding(
          padding:  EdgeInsets.only(right: 18),
          child: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
        elevation: 0,
        centerTitle: true,
        title:const Text(
          'Horoscope',
          style: TextStyle(fontSize: 22, color: Color(0xff060219)),
        ),
        backgroundColor: Colors.white,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(13, 22, 13, 32),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children:const [
                    Text(
                      "24",
                      style: TextStyle(
                          color: Color(0xff59B8BE),
                          fontWeight: FontWeight.bold,
                          fontSize: 40),
                    ),
                    Text(
                      "Feb, 2023",
                      style: TextStyle(color: Colors.black, fontSize: 19),
                    ),
                    Text(
                      "Tuesday",
                      style: TextStyle(color: Colors.black, fontSize: 19),
                    ),
                  ],
                ),
                Image.asset(
                  "assets/Images/suraj-removebg-preview@2x.png",
                  height: 122,
                  width: 146,
                )
              ],
            ),
          ),
          Container(
            height: h * 0.66208,
            width: w * 1,
            decoration:const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(70),
                )),
            child: GridView.builder(
                // ignore: prefer_const_constructors
                physics: BouncingScrollPhysics(),
                itemCount: 12,
                gridDelegate:const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                ),
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: const EdgeInsets.fromLTRB(9, 30, 8, 0),
                    child: Stack(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 30),
                          child: Card(
                            elevation: 5,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)),
                            child: Container(
                              height: h * 0.0825,
                              width: w * 0.277,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children:const [
                                  Text(
                                    "Aries",
                                    style: TextStyle(
                                        color: Color(0xff333333), fontSize: 14),
                                  ),
                                  Text(
                                    "21 Mar - 19 Apr",
                                    style: TextStyle(
                                        color: Color(0xff59B8BE), fontSize: 10),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 22.5,
                          ),
                          child: Image.asset(
                            "assets/Images/Group 1019@2x.png",
                            height: 55,
                            width: 55,
                          ),
                        )
                      ],
                    ),
                  );
                }),
          )
        ],
      ),
    );
  }
}
