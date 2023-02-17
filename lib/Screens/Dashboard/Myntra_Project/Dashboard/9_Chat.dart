import 'package:flutter/material.dart';

import '10_Astrologers_Profile.dart';
import '11_payment.dart';
import '23_Login_Popup.dart';
import '24_Filters_popup.dart';

class Chat extends StatefulWidget {
  const Chat({super.key});

  @override
  State<Chat> createState() => _ChatState();
}

class _ChatState extends State<Chat> {
  int index = 0;
  var h, w;
  @override
  Widget build(BuildContext context) {
    h = MediaQuery.of(context).size.height;
    w = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: GestureDetector(
          onTap: () {
            showModalBottomSheet(
                context: context,
                builder: ((context) {
                  return const Login_Popup();
                }));
          },
          child: Image.asset(
            "assets/Images/1mantra.png",
            height: h * 0.0362,
            width: w * 0.279,
          ),
        ),
        actions: [
          const CircleAvatar(
            radius: 15,
            backgroundColor: Color(0xffD9ECED),
            child: Icon(
              Icons.search,
              size: 22,
            ),
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 13, right: 13, left: 12),
                child: InkWell(
                  onTap: () {
                    setState(() {
                      Navigator.push(context,
                          MaterialPageRoute(builder: ((context) => const Payment())));
                    });
                  },
                  child: Container(
                    height: h * 0.0375,
                    width: w * 0.2243,
                    decoration: BoxDecoration(
                      color: const Color(0xFF59B8BE),
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Icon(
                          Icons.wallet,
                          color: Colors.white,
                          size: 20,
                        ),
                        SizedBox(width: 6),
                        Text(
                          "₹ 200",
                          style: TextStyle(
                              fontSize: 16,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
        backgroundColor: Colors.white,
        elevation: 5,
      ),
      body: ListView(
        physics: const BouncingScrollPhysics(),
        children: [
          SizedBox(
            height: h * 0.0125,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 13, right: 13),
            child: Row(
              children: [
                Container(
                  height: h * 0.04,
                  width: w * 0.753,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(
                        color: const Color(0xffEEEEEE),
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
                          width: w * 0.249,
                          height: h * 1,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(6),
                            color: index == 0
                                ? const Color(0xff59B8BE)
                                : Colors.transparent,
                          ),
                          child: Center(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.phone,
                                  size: 12.9,
                                  color: index == 0
                                      ? const Color(0xffFFFFFF)
                                      : const Color(0xff000000),
                                ),
                                SizedBox(
                                  width: w * 0.027,
                                ),
                                Text(
                                  "Call",
                                  style: TextStyle(
                                      color: index == 0
                                          ? const Color(0xffFFFFFF)
                                          : const Color(0xff000000),
                                      fontSize: 15),
                                ),
                              ],
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
                          width: w * 0.249,
                          height: h * 1,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(6),
                            color: index == 1
                                ? const Color(0xff59B8BE)
                                : Colors.transparent,
                          ),
                          child: Center(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.chat,
                                  size: 12.9,
                                  color: index == 1
                                      ? const Color(0xffFFFFFF)
                                      : const Color(0xff000000),
                                ),
                                SizedBox(
                                  width: w * 0.027,
                                ),
                                Text(
                                  "Chat",
                                  style: TextStyle(
                                      color: index == 1
                                          ? const Color(0xffFFFFFF)
                                          : const Color(0xff000000),
                                      fontSize: 15),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          setState(() {
                            index = 2;
                          });
                        },
                        child: Container(
                          width: w * 0.2494,
                          height: h * 1,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(6),
                            color: index == 2
                                ? const Color(0xff59B8BE)
                                : Colors.transparent,
                          ),
                          child: Center(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.video_call,
                                  size: 17,
                                  color: index == 2
                                      ? const Color(0xffFFFFFF)
                                      : const Color(0xff000000),
                                ),
                                SizedBox(
                                  width: w * 0.027,
                                ),
                                Text(
                                  "Video",
                                  style: TextStyle(
                                      color: index == 2
                                          ? const Color(0xffFFFFFF)
                                          : const Color(0xff000000),
                                      fontSize: 15),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: w * 0.015,
                ),
                Container(
                    height: h * 0.0325,
                    width: w * 0.072,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(
                          color: const Color(0xffEEEEEE),
                          width: 1,
                        )),
                    child:
                        Image.asset("assets/Images/Icon feather-filter.png")),
                SizedBox(
                  width: w * 0.015,
                ),
                InkWell(
                  onTap: (() {
                    showModalBottomSheet(
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(24),
                            topLeft: Radius.circular(24),
                          ),
                        ),
                        context: context,
                        builder: ((context) => const Filters_Popup()));
                  }),
                  child: Container(
                    height: h * 0.0325,
                    width: w * 0.072,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(
                          color: const Color(0xffEEEEEE),
                          width: 1,
                        )),
                    child: Center(
                      child: Image.asset(
                        "assets/Images/burger-menu-1-1-512@2x.png",
                        height: 12,
                        width: 13,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: h * 0.0225,
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(40),
              boxShadow: const [
                BoxShadow(
                  color: Color(0xff56565629),
                  blurRadius: 13,
                )
              ],
            ),
            child: SizedBox(
              height: h * 0.036,
              child: ListView.builder(
                  padding: const EdgeInsets.only(left: 6),
                  physics: const BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  itemCount: 10,
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                      padding: const EdgeInsets.only(left: 6),
                      child: Container(
                        height: h * 0.035,
                        width: w * 0.224,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(40),
                        ),
                        child: const Center(
                          child: Text(
                            "Marriage",
                            style: TextStyle(
                                color: Color(0xff000000), fontSize: 14),
                          ),
                        ),
                      ),
                    );
                  }),
            ),
          ),
          SizedBox(
            height: h * 0.0225,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8, right: 8),
            child: GridView.builder(
                physics: const BouncingScrollPhysics(),
                shrinkWrap: true,
                reverse: true,
                itemCount: 10,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisExtent: 205,
                    crossAxisSpacing: 5,
                    mainAxisSpacing: 5),
                itemBuilder: (BuildContext context, int index) {
                  return Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: InkWell(
                        onTap: () {
                          setState(() {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: ((context) =>
                                        const Astrologers_Profile())));
                          });
                        },
                        child: Container(
                          height: h * 0.265,
                          width: w * 0.457,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: const [
                              BoxShadow(
                                color: Color(0xff56565629),
                                blurRadius: 6,
                              )
                            ],
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                height: h * 0.1187,
                                width: w * 0.457,
                                decoration: const BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage(
                                            "assets/Images/Group 1351@2x.png"))),
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                    left: 9,
                                    right: 9,
                                    top: 24,
                                  ),
                                  child: Column(
                                    children: [
                                      Image.asset(
                                        "assets/Images/employee-6@2x.png",
                                        height: h * 0.06,
                                        width: w * 0.132,
                                      ),
                                      SizedBox(
                                        height: h * 0.0037,
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Row(
                                            children: [
                                              const CircleAvatar(
                                                radius: 4,
                                                backgroundColor:
                                                    Color(0xff01DF1F),
                                              ),
                                              SizedBox(
                                                width: w * 0.011,
                                              ),
                                              const Text(
                                                "Online",
                                                style: TextStyle(
                                                    fontSize: 12,
                                                    color: Colors.white),
                                              ),
                                            ],
                                          ),
                                          Row(
                                            children: [
                                              Image.asset(
                                                "assets/Images/astrology@2x.png",
                                                height: h * 0.0143,
                                                width: w * 0.0318,
                                              ),
                                              SizedBox(
                                                width: w * 0.022,
                                              ),
                                              Image.asset(
                                                "assets/Images/vedas@2x.png",
                                                height: h * 0.0143,
                                                width: w * 0.0249,
                                              ),
                                            ],
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              Container(
                                decoration: const BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                      bottomLeft: Radius.circular(10),
                                      bottomRight: Radius.circular(10)),
                                  color: Colors.white,
                                ),
                                child: Padding(
                                  padding:
                                      const EdgeInsets.only(left: 8, top: 8),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        children: [
                                          const Icon(
                                            Icons.star,
                                            color: Color(0xff00A8FF),
                                            size: 12.5,
                                          ),
                                          SizedBox(width: w * 0.0141),
                                          const Text(
                                            "4.99",
                                            style: TextStyle(
                                                fontSize: 14,
                                                fontWeight: FontWeight.bold,
                                                color: Color(0xff060219)),
                                          ),
                                          SizedBox(width: w * 0.033),
                                          Container(
                                            height: h * 0.0225,
                                            width: w * 0.2216,
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(12),
                                                color: const Color(0xff00A8FF)),
                                            child: const Center(
                                              child: Text(
                                                "Most Choice",
                                                style: TextStyle(
                                                    fontSize: 10,
                                                    color: Colors.white),
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                      const Text(
                                        "Astro Keshav M.",
                                        style: TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold,
                                            color: Color(0xff060219)),
                                      ),
                                      const Text(
                                        "Exp: 10+ year",
                                        style: TextStyle(
                                            fontSize: 13,
                                            color: Color(0xff484848)),
                                      ),
                                      const Text(
                                        "Language: Hindi, English",
                                        style: TextStyle(
                                            fontSize: 13,
                                            color: Color(0xff484848)),
                                      ),
                                      Row(
                                        children: const [
                                          Text(
                                            "Free ",
                                            style: TextStyle(
                                                fontSize: 13,
                                                color: Color(0xff00A8FF)),
                                          ),
                                          Text(
                                            "₹40",
                                            style: TextStyle(
                                                fontSize: 13,
                                                color: Color(0xff484848),
                                                decoration:
                                                    TextDecoration.lineThrough),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          const Icon(
                                            Icons.phone,
                                            color: Color(0xff484848),
                                            size: 12.5,
                                          ),
                                          SizedBox(
                                            width: w * 0.0346,
                                          ),
                                          const Icon(
                                            Icons.video_camera_back,
                                            color: Color(0xff484848),
                                            size: 12.5,
                                          ),
                                          SizedBox(
                                            width: w * 0.0346,
                                          ),
                                          const Icon(
                                            Icons.message,
                                            color: Color(0xff484848),
                                            size: 12.5,
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ));
                }),
          ),
          SizedBox(height: h * 0.03125),
        ],
      ),
    );
  }
}
