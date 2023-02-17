import 'package:flutter/material.dart';
import 'package:food_app/Screens/Dashboard/Myntra_Project/Dashboard/25_Book_Appointment.dart';

import '17_Request_cance.dart';
import '28_Offer_Popup.dart';

class Astrologers_Profile extends StatefulWidget {
  const Astrologers_Profile({super.key});

  @override
  State<Astrologers_Profile> createState() => _Astrologers_ProfileState();
}

class _Astrologers_ProfileState extends State<Astrologers_Profile> {
  var h, w;
  @override
  Widget build(BuildContext context) {
    h = MediaQuery.of(context).size.height;
    w = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.black),
        elevation: 0,
        toolbarHeight: 65,
        backgroundColor: const Color(0xffFFFFFF),
        centerTitle: true,
        title: const Text(
          "Astrologers Profile",
          style: TextStyle(color: Colors.black, fontSize: 22),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 8),
            child: Image.asset(
              'assets/Images/more.png',
              width: 19,
              height: 22,
            ),
          )
        ],
      ),
      body: ListView(
        physics: const BouncingScrollPhysics(),
        children: [
          Stack(
            children: [
              Container(
                width: w * 1,
                height: h * 0.2125,
                decoration: const BoxDecoration(
                    color: Color(0xffE1FAFB),
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(40),
                        bottomRight: Radius.circular(40))),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 13, top: 18),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset(
                            'assets/Images/NoPath - Copy (4)@2x.png',
                            width: 77,
                            height: 77,
                          ),
                          const SizedBox(
                            width: 15,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text(
                                "Astro Keshav M.",
                                style: TextStyle(
                                    color: Colors.black, fontSize: 20),
                              ),
                              Text(
                                "Hindi, English",
                                style: TextStyle(
                                    color: Color(0xff848484), fontSize: 16),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 107, top: 86),
                child: Row(
                  children: [
                    MaterialButton(
                      shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(6))),
                      onPressed: () {},
                      height: 32,
                      minWidth: 90,
                      color: const Color(0xff59B8BE),
                      child: const Text(
                        "Follow",
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 17,
                    ),
                    Container(
                      height: 32,
                      width: 112,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(6),
                        border: Border.all(
                          color: Colors.black,
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 6, right: 6),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Image.asset(
                              'assets/Images/Icon awesome-play-circle@2x.png',
                              height: 18.5,
                              width: 18.5,
                            ),
                            Image.asset(
                              'assets/Images/record@2x.png',
                              width: 62,
                              height: 62,
                            ),
                            const Text(
                              '44',
                              style:
                                  TextStyle(fontSize: 15, color: Colors.black),
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30, right: 30, top: 140),
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(45),
                  ),
                  child: Container(
                    height: 57,
                    width: 314,
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(0, 9, 0, 6),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Text(
                                '5',
                                style: TextStyle(
                                    fontSize: 15,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                "Rating",
                                style: TextStyle(fontSize: 12),
                              )
                            ],
                          ),
                          const SizedBox(
                            width: 6.5,
                          ),
                          Container(
                            height: 50,
                            width: 2,
                            color: const Color(0xffCDCDCD),
                          ),
                          const SizedBox(
                            width: 6.5,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Text(
                                '10+',
                                style: TextStyle(
                                    fontSize: 15,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                "Exp(years)",
                                style: TextStyle(fontSize: 12),
                              )
                            ],
                          ),
                          const SizedBox(
                            width: 6.5,
                          ),
                          Container(
                            height: 50,
                            width: 2,
                            color: const Color(0xffCDCDCD),
                          ),
                          const SizedBox(
                            width: 6.5,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Text(
                                '4.5K',
                                style: TextStyle(
                                    fontSize: 15,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                "Followers",
                                style: TextStyle(fontSize: 12),
                              )
                            ],
                          ),
                          const SizedBox(
                            width: 6.5,
                          ),
                          Container(
                            height: 50,
                            width: 2,
                            color: const Color(0xffCDCDCD),
                          ),
                          const SizedBox(
                            width: 6.5,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Text(
                                '15.5K',
                                style: TextStyle(
                                    fontSize: 15,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                "Orders",
                                style: TextStyle(fontSize: 12),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.only(left: 30, right: 30),
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(45),
              ),
              child: Container(
                height: 36,
                width: 314,
                child: Padding(
                  padding: const EdgeInsets.all(5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      MaterialButton(
                        onPressed: () {},
                        height: 26,
                        minWidth: 139,
                        color: const Color(0xffE1FAFB),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(24),
                        ),
                        child: const Text(
                          'Info',
                          style:
                              TextStyle(fontSize: 15, color: Color(0xff59B8BE)),
                        ),
                      ),
                      MaterialButton(
                        onPressed: () {},
                        height: 26,
                        minWidth: 139,
                        // color: Color(0xffE1FAFB),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(24),
                        ),
                        child: const Text(
                          'Posts',
                          style: TextStyle(fontSize: 15, color: Colors.black),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 13,
              right: 13,
            ),
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              child: Container(
                height: 39,
                width: 360,
                child: Padding(
                  padding: const EdgeInsets.only(left: 12, right: 12),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(
                        'Availability Time',
                        style: TextStyle(fontSize: 16),
                      ),
                      Icon(Icons.keyboard_arrow_down)
                    ],
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 13, right: 13),
            child: MaterialButton(
              onPressed: () {
                showModalBottomSheet(
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(24),
                        topLeft: Radius.circular(24),
                      ),
                    ),
                    context: context,
                    builder: (context) {
                      return const Book_Appointment();
                    });
              },
              shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10))),
              height: h * 0.0487,
              minWidth: w * 0.9972,
              color: const Color(0xffDFF7F8),
              child: const Text(
                'Book Appointment',
                style: TextStyle(fontSize: 16, color: Color(0xff59B8BE)),
              ),
            ),
          ),
          const SizedBox(
            height: 21,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 13, right: 13),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: const Color(0xffDFF7F8),
              ),
              height: 59,
              width: 360,
              child: Padding(
                padding: const EdgeInsets.only(left: 10, right: 10),
                child: Row(
                  children: [
                    const Icon(
                      Icons.thumb_up_alt,
                      color: Color(0xff59B8BE),
                      size: 25,
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    const Text(
                      '98%',
                      style: TextStyle(fontSize: 20, color: Colors.black),
                    ),
                    const SizedBox(
                      width: 6.5,
                    ),
                    Container(
                      height: 40,
                      width: 2,
                      color: const Color(0xffCDCDCD),
                    ),
                    const SizedBox(
                      width: 6.5,
                    ),
                    const Text(
                      "Out of all users who were surveyed. 98%\nof them are satisfied with Astro Ssachin S's\nprediction.",
                      style: TextStyle(fontSize: 12, color: Colors.black),
                    ),
                  ],
                ),
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 13, top: 17),
            child: Text(
              'Our Astro',
              style: TextStyle(fontSize: 18, color: Colors.black),
            ),
          ),
          const SizedBox(
            height: 12,
          ),
          SizedBox(
            height: h * 0.079,
            child: ListView.builder(
                physics: const BouncingScrollPhysics(),
                itemCount: 10,
                scrollDirection: Axis.horizontal,
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: InkWell(
                      onTap: () {
                        showModalBottomSheet(
                            shape: const RoundedRectangleBorder(
                              borderRadius: BorderRadius.only(
                                topRight: Radius.circular(10),
                                topLeft: Radius.circular(10),
                              ),
                            ),
                            context: context,
                            builder: (context) {
                              return const Request_Cance();
                            });
                      },
                      child: Column(
                        children: [
                          Image.asset(
                            'assets/Images/our-3@2x.png',
                            height: 45,
                            width: 45,
                          ),
                          const SizedBox(
                            height: 4,
                          ),
                          const Text(
                            'Vastu',
                            style: TextStyle(
                                fontSize: 12, color: Color(0xff333333)),
                          ),
                        ],
                      ),
                    ),
                  );
                }),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 13, top: 19),
            child: Text(
              'Services',
              style: TextStyle(fontSize: 18, color: Colors.black),
            ),
          ),
          const SizedBox(
            height: 12,
          ),
          SizedBox(
            height: h * 0.079,
            child: ListView.builder(
                physics: const BouncingScrollPhysics(),
                itemCount: 10,
                scrollDirection: Axis.horizontal,
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Column(
                      children: [
                        Image.asset(
                          "assets/Images/services-1@2x.png",
                          height: 45,
                          width: 45,
                        ),
                        const SizedBox(
                          height: 4,
                        ),
                        const Text(
                          'Marriage',
                          style:
                              TextStyle(fontSize: 12, color: Color(0xff333333)),
                        ),
                      ],
                    ),
                  );
                }),
          ),
          const SizedBox(
            height: 19,
          ),
          Row(
            children: const [
              Padding(
                padding: EdgeInsets.only(left: 13, right: 5),
                child: Text(
                  'Bio',
                  style: TextStyle(fontSize: 18, color: Color(0xff333333)),
                ),
              ),
              CircleAvatar(
                radius: 11.5,
                backgroundColor: Color(0xffDFF7F8),
                child: Icon(Icons.keyboard_arrow_down_sharp),
              )
            ],
          ),
          const SizedBox(
            height: 16,
          ),
          const Padding(
            padding: EdgeInsets.only(left: 13, right: 13),
            child: Text(
              'Astrology can be defined in many ways but we would want to explain this as science which helps people in guiding them through their good/bad times of life and this is done based on various & different planetary positions and calculations.',
              style: TextStyle(fontSize: 14, color: Color(0xff333333)),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 13, right: 13),
            child: Text(
              "We live in an era where we are digitalized to the level, everything of our need is available at the tip of our hands like health, food, clothing, etc.",
              style: TextStyle(fontSize: 14, color: Color(0xff333333)),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 13, right: 13),
            child: Text(
              "1 Mantra app is a one stop destination for all the astro seekers. We are trying to help people show the right direction in life through astrology and occult sciences",
              style: TextStyle(fontSize: 15, color: Color(0xff333333)),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(right: 13),
            child: Align(
              alignment: Alignment.topRight,
              child: Text(
                "Read More",
                style: TextStyle(
                    fontSize: 15,
                    color: Color(0xff59B8BE),
                    decoration: TextDecoration.underline),
              ),
            ),
          ),
          const SizedBox(
            height: 19,
          ),
          const Padding(
            padding: EdgeInsets.only(left: 13),
            child: Text(
              "Gallery",
              style: TextStyle(fontSize: 18, color: Color(0xff333333)),
            ),
          ),
          const SizedBox(
            height: 11,
          ),
          SizedBox(
            height: 87,
            child: ListView.builder(
                physics: const BouncingScrollPhysics(),
                itemCount: 10,
                scrollDirection: Axis.horizontal,
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: const EdgeInsets.only(left: 13),
                    child: Image.asset(
                      "assets/Images/gallery-1@2x.png",
                      height: 86,
                      width: 95,
                    ),
                  );
                }),
          ),
          const SizedBox(
            height: 22,
          ),
          const Padding(
            padding: EdgeInsets.only(left: 13),
            child: Text(
              "Reviews",
              style: TextStyle(fontSize: 18, color: Color(0xff333333)),
            ),
          ),
          const SizedBox(
            height: 6,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 27),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 26,
                      width: 199,
                      child: ListView.builder(
                          physics: const BouncingScrollPhysics(),
                          padding: const EdgeInsets.only(left: 37),
                          itemCount: 5,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (BuildContext context, int index) {
                            return const Padding(
                              padding: EdgeInsets.only(right: 10),
                              child: Icon(
                                Icons.star,
                                size: 25,
                                color: Color(0xff59B8BE),
                              ),
                            );
                          }),
                    ),
                    const SizedBox(
                      height: 6.5,
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 37),
                      child: Text(
                        "Based on 900 Reviews",
                        style:
                            TextStyle(fontSize: 15, color: Color(0xff333333)),
                      ),
                    ),
                  ],
                ),
                const Text(
                  "4.58",
                  style: TextStyle(fontSize: 26, color: Color(0xff000000)),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 14,
          ),
          ListView.builder(
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              itemCount: 5,
              itemBuilder: (BuildContext context, int index) {
                return Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 13),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset(
                            "assets/Images/4@2x.png",
                            height: 50,
                            width: 50,
                          ),
                          const SizedBox(
                            width: 16,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                "Rohan Sharma",
                                style: TextStyle(
                                    fontSize: 15, color: Color(0xff333333)),
                              ),
                              const SizedBox(
                                height: 1,
                              ),
                              SizedBox(
                                height: 15,
                                width: 199,
                                child: ListView.builder(
                                    physics: const BouncingScrollPhysics(),
                                    itemCount: 5,
                                    scrollDirection: Axis.horizontal,
                                    itemBuilder:
                                        (BuildContext context, int index) {
                                      return const Padding(
                                        padding: EdgeInsets.only(right: 5),
                                        child: Icon(
                                          Icons.star,
                                          size: 13,
                                          color: Color(0xff59B8BE),
                                        ),
                                      );
                                    }),
                              ),
                              const SizedBox(
                                height: 8.5,
                              ),
                              const Text(
                                "Good information given by him",
                                style: TextStyle(
                                    fontSize: 13, color: Color(0xff848484)),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 6,
                    ),
                    const Divider(
                      height: 2,
                      color: Color(0xff71717129),
                    ),
                    const SizedBox(
                      height: 9,
                    ),
                  ],
                );
              }),
          const Padding(
            padding: EdgeInsets.only(
              right: 13,
            ),
            child: Align(
              alignment: Alignment.centerRight,
              child: Text(
                "All View Reviews",
                style: TextStyle(fontSize: 15, color: Color(0xff59B8BE)),
              ),
            ),
          ),
          const SizedBox(
            height: 17,
          ),
          Container(
            height: 132,
            decoration: const BoxDecoration(color: Colors.white, boxShadow: [
              BoxShadow(
                color: Color(0xff333333),
                blurRadius: 5,
                offset: Offset(
                  0,
                  2,
                ),
              )
            ]),
            child: Padding(
              padding: const EdgeInsets.fromLTRB(13, 8, 13, 19),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: 108,
                        height: 46,
                        decoration: BoxDecoration(
                            color: const Color(0xff59B8BE),
                            borderRadius: BorderRadius.circular(6)),
                        child: Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: Column(
                            children: const [
                              Text(
                                "Call",
                                style: TextStyle(
                                    fontSize: 15, color: Colors.white),
                              ),
                              Text(
                                "₹5/min",
                                style:
                                    TextStyle(fontSize: 9, color: Colors.white),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        width: 108,
                        height: 46,
                        decoration: BoxDecoration(
                            color: const Color(0xff59B8BE),
                            borderRadius: BorderRadius.circular(6)),
                        child: Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: Column(
                            children: const [
                              Text(
                                "Chat",
                                style: TextStyle(
                                    fontSize: 15, color: Colors.white),
                              ),
                              Text(
                                "₹5/min",
                                style:
                                    TextStyle(fontSize: 9, color: Colors.white),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        width: 108,
                        height: 46,
                        decoration: BoxDecoration(
                            color: const Color(0xff59B8BE),
                            borderRadius: BorderRadius.circular(6)),
                        child: Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: Column(
                            children: const [
                              Text(
                                "Video",
                                style: TextStyle(
                                    fontSize: 15, color: Colors.white),
                              ),
                              Text(
                                "₹5/min",
                                style:
                                    TextStyle(fontSize: 9, color: Colors.white),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: h * 0.025,
                  ),
                  InkWell(
                    onTap: () {
                      showModalBottomSheet(
                          isDismissible: false,
                          enableDrag: false,
                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                              topRight: Radius.circular(24),
                              topLeft: Radius.circular(24),
                            ),
                          ),
                          context: context,
                          builder: ((context) => const Offer_Popup()));
                    },
                    child: Container(
                      width: w * 1,
                      height: h * 0.048,
                      decoration: BoxDecoration(
                          color: const Color(0xff59B8BE),
                          borderRadius: BorderRadius.circular(10)),
                      child: const Center(
                        child: Text(
                          "Book a long session at discount!",
                          style: TextStyle(fontSize: 16, color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
