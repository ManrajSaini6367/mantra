// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '37_CEO_Popup.dart';
import '8_Drawer_Manu.dart';

class Screen extends StatefulWidget {
  const Screen({super.key});
  @override
  State<Screen> createState() => _ScreenState();
}

class _ScreenState extends State<Screen> {
  var h, w;
  @override
  Widget build(BuildContext context) {
    h = MediaQuery.of(context).size.height;
    w = MediaQuery.of(context).size.width;

    return Scaffold(
      drawer: Drawer_Manu(),
      appBar: AppBar(
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
        title: Row(
          children: [
            Image.asset(
              "assets/Images/location@2x.png",
              height: 25,
            ),
            SizedBox(width: 10),
            Column(
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                Text(
                  "your city",
                  style: TextStyle(fontSize: 8, color: Colors.black),
                ),
                Text(
                  'Jaipur',
                  style: TextStyle(fontSize: 16, color: Colors.black),
                )
              ],
            ),
          ],
        ),
        actions: [
          GestureDetector(
            onTap: () {},
            child: Padding(
              padding: const EdgeInsets.all(13),
              child: Container(
                width: 81,
                height: 30,
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 107, 138, 240),
                    borderRadius: BorderRadius.circular(50)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Icon(Icons.wallet),
                    Text(
                      '₹200',
                    )
                  ],
                ),
              ),
            ),
          ),
          Icon(Icons.notifications),
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: Icon(Icons.language),
          )
        ],
      ),
      body: ListView(
        physics: BouncingScrollPhysics(),
        children: [
          Stack(
            children: [
              Container(
                height: 300,
                width: 360,
                padding: EdgeInsets.only(top: 50),
                decoration: const BoxDecoration(
                    gradient: LinearGradient(
                        colors: [Colors.white, Colors.blue],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter)),
                child: Align(
                    alignment: Alignment.topLeft,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 11),
                      child: Image.asset(
                        "assets/Images/offer@2x.png",
                        width: 156,
                        height: 206,
                      ),
                    )),
              ),
              SizedBox(
                height: 350,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 10,
                    physics: BouncingScrollPhysics(),
                    itemBuilder: (BuildContext context, int index) {
                      return Container(
                        margin: EdgeInsets.only(
                          top: 250,
                          left: 13,
                        ),
                        height: 118,
                        width: 283,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                        ),
                        padding: EdgeInsets.all(8),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              // ignore: prefer_const_literals_to_create_immutables
                              children: [
                                Text(
                                  'Astro Keshav M.',
                                  style: TextStyle(fontSize: 15),
                                ),
                                SizedBox(
                                  height: 3,
                                ),
                                Text(
                                  'Exp: 10+ year',
                                  style: TextStyle(
                                    fontSize: 12,
                                  ),
                                ),
                                Text(
                                  'Tarot, Numerology, Prashna...',
                                  style: TextStyle(
                                    fontSize: 12,
                                  ),
                                ),
                                Text(
                                  'Language: Hindi, English',
                                  style: TextStyle(
                                    fontSize: 12,
                                  ),
                                ),
                                SizedBox(
                                  height: 2,
                                ),
                                Row(
                                  // ignore: prefer_const_literals_to_create_immutables
                                  children: [
                                    Text('New user ₹40/min',
                                        style: TextStyle(
                                            fontSize: 12,
                                            color: Color(0xff59B8BE))),
                                    Text(
                                      '₹60',
                                      style: TextStyle(
                                          fontSize: 12,
                                          decoration:
                                              TextDecoration.lineThrough),
                                    ),
                                  ],
                                )
                              ],
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Image.asset(
                                  "assets/Images/NoPath - Copy (4)@2x.png",
                                  height: 49,
                                  width: 49,
                                ),
                                SizedBox(
                                  height: 21,
                                  child: MaterialButton(
                                    onPressed: () {},
                                    height: 21,
                                    minWidth: 72,
                                    color: Color(0xff59B8BE),
                                    child: Text(
                                      'online',
                                      style: TextStyle(
                                          color: Color(0xffFFFFFF),
                                          fontSize: 13),
                                    ),
                                  ),
                                ),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.call,
                                      size: 13,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 7),
                                      child: Icon(
                                        Icons.video_call,
                                        size: 14,
                                      ),
                                    ),
                                    Icon(
                                      Icons.message_sharp,
                                      size: 13,
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      );
                    }),
              ),
              Align(
                alignment: Alignment.centerRight,
                child: Padding(
                  padding: const EdgeInsets.only(top: 80, right: 15),
                  child: SizedBox(
                    width: 190,
                    child: Column(
                      children: [
                        Text(
                          'On your 1st recharge or app pay ₹1',
                          style: TextStyle(fontSize: 15),
                          textAlign: TextAlign.center,
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 10),
                          alignment: Alignment.center,
                          height: 53,
                          width: 102,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  fit: BoxFit.fill,
                                  image: AssetImage(
                                    "assets/Images/bresh-shape@2x.png",
                                  ))),
                          child: Text(
                            "Get₹100",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                        ),
                        MaterialButton(
                          shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                          onPressed: () {},
                          height: 28,
                          minWidth: 122,
                          color: Colors.black,
                          child: Text(
                            'clike here',
                            style: TextStyle(color: Colors.white, fontSize: 14),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Container(
                  alignment: Alignment.centerLeft,
                  padding: EdgeInsets.only(
                    top: 3,
                  ),
                  margin: EdgeInsets.only(left: 15, right: 15, top: 15),
                  height: 36,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(5)),
                  child: TextFormField(
                    decoration: InputDecoration(
                        hintText: "Astrologers, products,........",
                        border: InputBorder.none,
                        prefixIcon: Icon(Icons.search)),
                  )),
            ],
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 15, 15, 17),
            child: Align(
              alignment: Alignment.centerRight,
              child: InkWell(
                onTap: () {},
                child: Text("See All",
                    style: TextStyle(
                        color: Color(0xff59B8BE),
                        decoration: TextDecoration.underline,
                        fontSize: 15)),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              bottom: 8,
              left: 13,
            ),
            child: Text(
              'Live Astrologer',
              style: TextStyle(fontSize: 18),
            ),
          ),
          SizedBox(
              height: h * 0.12,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 10,
                  physics: BouncingScrollPhysics(),
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                      padding: const EdgeInsets.only(left: 13),
                      child: Column(
                        children: [
                          Stack(
                            children: [
                              Container(
                                  height: 49,
                                  width: 49,
                                  margin: EdgeInsets.only(left: 2),
                                  decoration: BoxDecoration(
                                      border:
                                          Border.all(color: Color(0xff59B8BE)),
                                      borderRadius: BorderRadius.circular(40)),
                                  child: Padding(
                                    padding: const EdgeInsets.all(2),
                                    child: Image.asset(
                                      "assets/Images/1@2x.png",
                                    ),
                                  )),
                              Padding(
                                padding: const EdgeInsets.only(
                                  top: 38,
                                ),
                                child: SizedBox(
                                  height: 15,
                                  width: 55,
                                  child: MaterialButton(
                                    height: 16,
                                    minWidth: 33,
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(5)),
                                    onPressed: () {},
                                    color: Colors.cyan,
                                    child: Text(
                                      'live',
                                      style: TextStyle(
                                          fontSize: 10, color: Colors.white),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "Mantra As..",
                            style: TextStyle(fontSize: 12),
                          )
                        ],
                      ),
                    );
                  })),
          Container(
              width: w * 1,
              height: h * .160,
              color: Color.fromARGB(193, 184, 202, 209),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(13, 14, 0, 4),
                    child: Text(
                      "Services",
                      style: TextStyle(fontSize: 18),
                    ),
                  ),
                  SizedBox(
                    height: h * 0.10,
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: 10,
                        physics: BouncingScrollPhysics(),
                        itemBuilder: (BuildContext context, int index) {
                          return Column(
                            children: [
                              Container(
                                height: 45,
                                width: 45,
                                padding: EdgeInsets.all(10),
                                margin: EdgeInsets.only(left: 13),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(40),
                                    color: Color(0xffF2D2D6)),
                                child: Image.asset(
                                  "assets/Images/health (2)@2x.png",
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 13, top: 5),
                                child: Text(
                                  "Health",
                                  style: TextStyle(fontSize: 12),
                                ),
                              )
                            ],
                          );
                        }),
                  )
                ],
              )),
          Padding(
            padding: const EdgeInsets.fromLTRB(13, 17, 0, 10),
            child: Text(
              "Our Astro",
              style: TextStyle(fontSize: 17),
            ),
          ),
          SizedBox(
            height: h * 0.10,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 10,
                physics: BouncingScrollPhysics(),
                itemBuilder: (BuildContext context, int index) {
                  return Column(
                    children: [
                      Container(
                        height: 45,
                        width: 45,
                        padding: EdgeInsets.all(10),
                        margin: EdgeInsets.only(left: 13),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(40),
                            color: Color(0xffF2D2D6)),
                        child: Image.asset(
                          "assets/Images/numuro@2x.png",
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 13, top: 5),
                        child: Text(
                          "Numero",
                          style: TextStyle(fontSize: 12),
                        ),
                      )
                    ],
                  );
                }),
          ),
          Container(
            margin: EdgeInsets.zero,
            height: 145,
            width: double.infinity,
            color: Color(0xffF2F2F2),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(13, 20, 0, 14),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset(
                        'assets/Images/gift@2x.png',
                        width: 50,
                        height: 59,
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "Hot Offer",
                        style: TextStyle(fontSize: 16),
                      ),
                      Text(
                        "Select your offer & \nwe'll help you",
                        style: TextStyle(fontSize: 12),
                      )
                    ],
                  ),
                ),
                Container(
                  height: 114,
                  width: 212,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/Images/Group 1631@2x.png'),
                          fit: BoxFit.cover)),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 53, left: 85),
                    child: Column(
                      children: [
                        Container(
                          width: 72,
                          height: 23,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(2),
                              color: Colors.white),
                          child: Center(
                            child: Text(
                              "HOLIDAY",
                              style: TextStyle(
                                  fontSize: 15, color: Color(0xff59B8BE)),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 2,
                        ),
                        Text(
                          "OFFERS",
                          style: TextStyle(fontSize: 15, color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(13, 22, 13, 7),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Horoscope",
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                ),
                InkWell(
                  onTap: () {},
                  child: Text("See All",
                      style: TextStyle(
                          color: Color(0xff59B8BE),
                          decoration: TextDecoration.underline,
                          fontSize: 15)),
                ),
              ],
            ),
          ),
          SizedBox(
            height: h * 0.105,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                physics: BouncingScrollPhysics(),
                itemCount: 25,
                itemBuilder: (BuildContext context, int index) {
                  return Stack(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                          top: 30,
                        ),
                        child: Card(
                          child: Container(
                            alignment: Alignment.bottomLeft,
                            height: 45,
                            width: 80,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 19),
                        child: Column(
                          children: [
                            Image.asset(
                              "assets/Images/Group 1019@2x.png",
                              height: 50,
                              width: 50,
                            ),
                            Text(
                              "Aries",
                              style: TextStyle(fontSize: 12),
                            ),
                          ],
                        ),
                      )
                    ],
                  );
                }),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(13, 22, 0, 17),
            child: Text(
              'Highlights',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
          ),
          ListView.builder(
              itemCount: 3,
              shrinkWrap: true,
              physics: BouncingScrollPhysics(),
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: const EdgeInsets.only(bottom: 11),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 12, left: 13),
                        child: Container(
                          height: 63,
                          width: 63,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(60),
                            color: Color(0xffE1FAFB),
                          ),
                          child: Image.asset('assets/Images/Group 1093.png'),
                        ),
                      ),
                      SizedBox(
                        width: 250,
                        child: Column(
                          // ignore: prefer_const_literals_to_create_immutables
                          children: [
                            Text(
                              "24*7 support in English and all regional language",
                              style: TextStyle(
                                  fontSize: 17, fontWeight: FontWeight.w500),
                            ),
                            Text(
                              "Select your astrologer & we'll help you unlock the best selling price based.",
                              style: TextStyle(
                                fontSize: 14,
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                );
              }),
          Padding(
            padding:
                const EdgeInsets.only(left: 13, right: 13, top: 5, bottom: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Popular Blog",
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
                InkWell(
                  onTap: () {},
                  child: Text("View All",
                      style: TextStyle(
                          color: Color(0xff59B8BE),
                          decoration: TextDecoration.underline,
                          fontSize: 13)),
                ),
              ],
            ),
          ),
          SizedBox(
            height: h * 0.30,
            child: ListView.builder(
                padding: EdgeInsets.only(left: 7),
                physics: BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                itemCount: 10,
                itemBuilder: (BuildContext context, int index) {
                  return Card(
                    child: Container(
                      height: 250,
                      width: 268,
                      child: Column(
                        children: [
                          Image.asset('assets/Images/blog_single2@2x.png'),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            'Does Your Kundli have a govt. job?',
                            style: TextStyle(fontSize: 16),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              left: 6,
                              right: 6,
                              top: 10,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              // ignore: prefer_const_literals_to_create_immutables
                              children: [
                                Text(
                                  'Astro Keshav M.',
                                  style: TextStyle(
                                      color: Color(0xff59B8BE), fontSize: 15),
                                ),
                                Text(
                                  'Fri, 16, 2022',
                                  style: TextStyle(
                                      color: Color(0xff59B8BE), fontSize: 15),
                                )
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 6, left: 6),
                            child: Text(
                                'Lorem ipsum dolor sit amet, constetur adipisicing eiusmod tempor ...'),
                          )
                        ],
                      ),
                    ),
                  );
                }),
          ),
          Padding(
            padding:
                const EdgeInsets.only(right: 13, left: 13, top: 5, bottom: 15),
            child: Stack(
              children: [
                Container(
                  height: 180,
                  width: w * 1,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                          image: AssetImage('assets/Images/Group 1398@2x.png'),
                          fit: BoxFit.cover)),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 40, left: 17),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "CEO Connect",
                        style:
                            TextStyle(fontSize: 16, color: Color(0xff59B8BE)),
                      ),
                      SizedBox(
                        height: 11,
                      ),
                      InkWell(
                        onTap: () {
                          showModalBottomSheet(
                              enableDrag: false,
                              isDismissible: false,
                              shape: const RoundedRectangleBorder(
                                borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(24),
                                  topLeft: Radius.circular(24),
                                ),
                              ),
                              context: context,
                              builder: (context) {
                                return CEO_Popup();
                              });
                        },
                        child: Container(
                          height: 27,
                          width: 92,
                          decoration: BoxDecoration(
                              color: Color(0xff59B8BE),
                              borderRadius: BorderRadius.circular(6)),
                          child: Center(
                            child: Text(
                              "Book",
                              style: TextStyle(
                                  fontSize: 15, color: Color(0xffFFFFFF)),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 13, right: 13, bottom: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "User Reviews",
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
                InkWell(
                  onTap: () {},
                  child: Text("View All",
                      style: TextStyle(
                          color: Color(0xff59B8BE),
                          decoration: TextDecoration.underline,
                          fontSize: 13)),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 135,
            child: ListView.builder(
                itemCount: 10,
                scrollDirection: Axis.horizontal,
                physics: BouncingScrollPhysics(),
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: const EdgeInsets.only(left: 8),
                    child: Card(
                        child: Container(
                      height: 144,
                      width: 268,
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(11, 16, 11, 8),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Image.asset(
                                  'assets/Images/1@2x.png',
                                  height: 57,
                                  width: 57,
                                ),
                                SizedBox(
                                  width: 8,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Rohan Sharma',
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w500),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.fromLTRB(
                                          0, 2.5, 0, 4),
                                      child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: List.generate(
                                              5,
                                              (index) => Padding(
                                                    padding: const EdgeInsets
                                                            .symmetric(
                                                        horizontal: 2.5),
                                                    child: Icon(
                                                      Icons.star,
                                                      color: Color(
                                                        0xff59B8BE,
                                                      ),
                                                      size: 13,
                                                    ),
                                                  ))),
                                    ),
                                    Text(
                                      'Jaipur',
                                      style: TextStyle(fontSize: 15),
                                    ),
                                  ],
                                )
                              ],
                            ),
                            SizedBox(
                              height: 7,
                            ),
                            Text(
                              "Lorem ipsum dolor sit amet, constetur adipisicing eiusmod tempor ...",
                              style: TextStyle(fontSize: 14),
                            )
                          ],
                        ),
                      ),
                    )),
                  );
                }),
          ),
          SizedBox(
            height: 30,
          )
        ],
      ),
    );
  }
}
