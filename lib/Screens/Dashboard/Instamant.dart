// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:food_app/Resueable/Utils.dart';

import 'Screens/Dashboard/Location.dart';

class Instamant extends StatefulWidget {
  const Instamant({super.key});

  @override
  State<Instamant> createState() => _HomeState();
}

class _HomeState extends State<Instamant> {
  List page = [
    {
      "image": "assets/Images/surf_excel-removebg-preview.png",
      "title": "Sunlite Refined sunflower Oil",
      "subtitle": "Forture",
      "kg": "1 L",
      "prise": "₹199",
      "subprise": "₹183"
    },
    {
      "image": "assets/Images/ARIEL-removebg-preview.png",
      "title": "Complete Detegrent Power",
      "subtitle": "Ariel",
      "kg": "4 kg",
      "prise": "₹1500",
      "subprise": "₹780"
    },
    {
      "image": "assets/Images/surf_excel-removebg-preview.png",
      "title": "Liquid Detergent Matic Load",
      "subtitle": "Surf Excekl",
      "kg": "1 L",
      "prise": "₹1220",
      "subprise": "₹198"
    },
    {
      "image": "assets/Images/Robin-removebg-preview.png",
      "title": "Citrus Disinfectant ",
      "subtitle": "Lizol",
      "kg": "1.8 L",
      "prise": "₹350",
      "subprise": "304"
    },
    {
      "image": "assets/Images/chehar-removebg-preview.png",
      "title": "Sunlite Refined sunflower Oil",
      "subtitle": "Forture",
      "kg": "1 L",
      "prise": "₹199",
      "subprise": "₹183"
    },
    {
      "image": "assets/Images/wheel-removebg-preview.png",
      "title": "Complete Detegrent Power",
      "subtitle": "Ariel",
      "kg": "4 kg",
      "prise": "₹1500",
      "subprise": "₹780"
    },
    {
      "image": "assets/Images/chehar-removebg-preview.png",
      "title": "Liquid Detergent Matic Load",
      "subtitle": "Surf Excekl",
      "kg": "1 L",
      "prise": "₹1220",
      "subprise": "₹198"
    },
    {
      "image": "assets/Images/surf_excel-removebg-preview.png",
      "title": "Sunlite Refined sunflower Oil",
      "subtitle": "Forture",
      "kg": "1 L",
      "prise": "₹199",
      "subprise": "₹183"
    },
    {
      "image": "assets/Images/ARIEL-removebg-preview.png",
      "title": "Complete Detegrent Power",
      "subtitle": "Ariel",
      "kg": "4 kg",
      "prise": "₹1500",
      "subprise": "₹780"
    },
    {
      "image": "assets/Images/surf_excel-removebg-preview.png",
      "title": "Liquid Detergent Matic Load",
      "subtitle": "Surf Excekl",
      "kg": "1 L",
      "prise": "₹1220",
      "subprise": "₹198"
    },
    {
      "image": "assets/Images/Robin-removebg-preview.png",
      "title": "Citrus Disinfectant ",
      "subtitle": "Lizol",
      "kg": "1.8 L",
      "prise": "₹350",
      "subprise": "304"
    },
    {
      "image": "assets/Images/chehar-removebg-preview.png",
      "title": "Sunlite Refined sunflower Oil",
      "subtitle": "Forture",
      "kg": "1 L",
      "prise": "₹199",
      "subprise": "₹183"
    },
    {
      "image": "assets/Images/wheel-removebg-preview.png",
      "title": "Complete Detegrent Power",
      "subtitle": "Ariel",
      "kg": "4 kg",
      "prise": "₹1500",
      "subprise": "₹780"
    },
    {
      "image": "assets/Images/chehar-removebg-preview.png",
      "title": "Liquid Detergent Matic Load",
      "subtitle": "Surf Excekl",
      "kg": "1 L",
      "prise": "₹1220",
      "subprise": "₹198"
    },
    {
      "image": "assets/Images/surf_excel-removebg-preview.png",
      "title": "Sunlite Refined sunflower Oil",
      "subtitle": "Forture",
      "kg": "1 L",
      "prise": "₹199",
      "subprise": "₹183"
    },
    {
      "image": "assets/Images/ARIEL-removebg-preview.png",
      "title": "Complete Detegrent Power",
      "subtitle": "Ariel",
      "kg": "4 kg",
      "prise": "₹1500",
      "subprise": "₹780"
    },
    {
      "image": "assets/Images/surf_excel-removebg-preview.png",
      "title": "Liquid Detergent Matic Load",
      "subtitle": "Surf Excekl",
      "kg": "1 L",
      "prise": "₹1220",
      "subprise": "₹198"
    },
    {
      "image": "assets/Images/Robin-removebg-preview.png",
      "title": "Citrus Disinfectant ",
      "subtitle": "Lizol",
      "kg": "1.8 L",
      "prise": "₹350",
      "subprise": "304"
    },
    {
      "image": "assets/Images/chehar-removebg-preview.png",
      "title": "Sunlite Refined sunflower Oil",
      "subtitle": "Forture",
      "kg": "1 L",
      "prise": "₹199",
      "subprise": "₹183"
    },
    {
      "image": "assets/Images/wheel-removebg-preview.png",
      "title": "Complete Detegrent Power",
      "subtitle": "Ariel",
      "kg": "4 kg",
      "prise": "₹1500",
      "subprise": "₹780"
    },
    {
      "image": "assets/Images/chehar-removebg-preview.png",
      "title": "Liquid Detergent Matic Load",
      "subtitle": "Surf Excekl",
      "kg": "1 L",
      "prise": "₹1220",
      "subprise": "₹198"
    },
  ];

  var w, h;
  @override
  Widget build(BuildContext context) {
    w = MediaQuery.of(context).size.width;
    h = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        physics: BouncingScrollPhysics(),
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 13, right: 13),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  customtext('Instamart', Color.fromARGB(255, 187, 4, 4), 30,
                      FontWeight.bold, FontStyle.normal),
                  Column(crossAxisAlignment: CrossAxisAlignment.end, children: [
                    customtext('Delivering in', Colors.black, 11,
                        FontWeight.normal, FontStyle.normal),
                    customtext('15-20 mins', Color.fromARGB(255, 187, 4, 4), 19,
                        FontWeight.bold, FontStyle.normal)
                  ]),
                ]),
          ),
          SizedBox(height: 35),
          Container(
              width: w * 1,
              height: h * 0.49,
              color: Color.fromARGB(255, 187, 4, 4),
              child: Padding(
                padding: const EdgeInsets.only(left: 13, right: 13, bottom: 20),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                          padding: const EdgeInsets.only(top: 25, bottom: 25),
                          child: customtext(
                              'Mega Savings Festival ',
                              Colors.white,
                              28,
                              FontWeight.bold,
                              FontStyle.normal)),
                      Container(
                        width: w * 0.95,
                        height: h * 0.35,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(13),
                          color: Colors.white,
                        ),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                  padding: const EdgeInsets.only(
                                      top: 17, bottom: 12, left: 15),
                                  child: customtext(
                                      'Flat ₹100 OFF!*',
                                      Colors.black,
                                      23,
                                      FontWeight.bold,
                                      FontStyle.normal)),
                              Image.asset(
                                'assets/Images/berries-ge3f763765_1920.jpg',
                                fit: BoxFit.fill,
                                height: h * 0.23,
                                width: w * 1,
                              ),
                              Padding(
                                  padding: const EdgeInsets.only(
                                      top: 10, bottom: 7, left: 15, right: 15),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      customtext(
                                          'SHOP NOW TO SAVE BIG',
                                          Color.fromARGB(255, 187, 4, 4),
                                          18,
                                          FontWeight.bold,
                                          FontStyle.normal),
                                      Icon(
                                        Icons.arrow_circle_right,
                                        size: 23,
                                      )
                                    ],
                                  ))
                            ]),
                      )
                    ]),
              )),
          Padding(
            padding: const EdgeInsets.only(left: 13, right: 13, top: 25),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  customtext(
                      'Great deals on top picks',
                      Color.fromARGB(255, 187, 4, 4),
                      20,
                      FontWeight.bold,
                      FontStyle.normal),
                  Icon(
                    Icons.arrow_circle_right,
                    size: 23,
                  )
                ]),
          ),
          SizedBox(height: 15),
          SizedBox(
            height: h * 0.25,
            child: ListView.builder(
                physics: BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                itemCount: page.length,
                itemBuilder: (BuildContext context, int index) {
                  return SizedBox(
                    width: w * 0.38,
                    child: Padding(
                      padding: const EdgeInsets.only(right: 13, left: 13),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            height: h * 0.11,
                            width: w * 0.38,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(
                                      page[index]["image"]..toString())),
                              borderRadius: BorderRadius.circular(15),
                              color: Color.fromARGB(255, 231, 238, 216),
                            ),
                          ),
                          SizedBox(height: 12),
                          customtext(
                              page.elementAt(index)['subtitle'].toString(),
                              Colors.black,
                              12,
                              FontWeight.normal,
                              FontStyle.normal),
                          customtext(
                              page.elementAt(index)['title'].toString(),
                              Colors.black,
                              14,
                              FontWeight.bold,
                              FontStyle.normal),
                          SizedBox(
                            height: h * 0.015,
                          ),
                          customtext(
                              page.elementAt(index)['kg'].toString(),
                              Colors.black,
                              12,
                              FontWeight.normal,
                              FontStyle.normal),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                children: [
                                  Text(
                                    page.elementAt(index)['prise'].toString(),
                                    style: TextStyle(
                                        color: Colors.black,
                                        decoration: TextDecoration.lineThrough,
                                        fontSize: 12),
                                  ),
                                  customtext(
                                      page
                                          .elementAt(index)['subprise']
                                          .toString(),
                                      Colors.black,
                                      12,
                                      FontWeight.normal,
                                      FontStyle.normal),
                                ],
                              ),
                              Container(
                                height: 25,
                                width: 60,
                                decoration: BoxDecoration(
                                    border: Border.all(color: Colors.black),
                                    borderRadius: BorderRadius.circular(7)),
                                child: Center(
                                    child: customtext('ADD', Colors.amber, 15,
                                        FontWeight.bold, FontStyle.normal)),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  );
                }),
          ),
          SizedBox(height: 20),
          Padding(
              padding: const EdgeInsets.only(
                left: 13,
                right: 13,
              ),
              child: custombutton(
                  () {},
                  Color.fromARGB(255, 247, 3, 3),
                  45,
                  500,
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        customtext('Claim Your Mega Saving Now', Colors.white,
                            18, FontWeight.normal, FontStyle.normal),
                        Icon(Icons.arrow_right_rounded)
                      ]),
                  BorderRadius.circular(6))),
          Padding(
              padding: const EdgeInsets.only(
                left: 13,
                top: 25,
              ),
              child: customtext('Save mare with coupons', Colors.black, 20,
                  FontWeight.bold, FontStyle.normal)),
          Padding(
              padding: const EdgeInsets.only(
                left: 13,
              ),
              child: customtext('Shop by category', Colors.black, 20,
                  FontWeight.bold, FontStyle.normal)),
          SizedBox(height: 25),
          Padding(
            padding: const EdgeInsets.only(left: 13, right: 13),
            child: GridView.builder(
              physics: BouncingScrollPhysics(),
              itemCount: 21,
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  crossAxisSpacing: 35,
                  mainAxisExtent: 118,
                  mainAxisSpacing: 20),
              itemBuilder: (BuildContext context, int index) {
                return Column(
                  children: [
                    Container(
                      height: h * 0.12,
                      width: w * 0.30,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            Colors.green.withOpacity(0.15),
                            Colors.green.withOpacity(0.01)
                          ],
                        ),
                      ),
                      child: Image.asset(
                        page[index]['image'].toString(),
                      ),
                    ),
                    SizedBox(height: 5),
                    customtext(page.elementAt(index)['subtitle'].toString(),
                        Colors.black, 14, FontWeight.normal, FontStyle.normal),
                  ],
                );
              },
            ),
          ),
          SizedBox(
            height: h * 0.04,
          ),
          Padding(
              padding: const EdgeInsets.only(
                left: 13,
              ),
              child: customtext('Brand with a buzz', Colors.black, 20,
                  FontWeight.bold, FontStyle.normal)),
          Padding(
            padding: const EdgeInsets.only(left: 13, right: 13, top: 16),
            child: Container(
              height: h * 0.42,
              width: w * 0.99,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Colors.pink.withOpacity(0.45),
                    Colors.pink.withOpacity(0.12),
                    Colors.pink.withOpacity(0.17)
                  ],
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Container(
                          height: h * 0.07,
                          width: w * 0.15,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: Colors.white,
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(top: 17),
                            child: Column(
                              children: [
                                customtext('whole', Colors.black, 8,
                                    FontWeight.w400, FontStyle.italic),
                                customtext('The Truth', Colors.black, 10,
                                    FontWeight.bold, FontStyle.normal)
                              ],
                            ),
                          ),
                        ),
                        Image.asset(
                          "assets/Images/Yazz-banner1-removebg-preview.png",
                          height: 200,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: h * 0.04,
                    ),
                    customtext('The Whole Truth', Colors.white.withOpacity(0.6),
                        14, FontWeight.normal, FontStyle.normal),
                    SizedBox(
                      height: h * 0.005,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          width: 180,
                          child: Column(
                            children: [
                              customtext(
                                  'Cleanest Snack for Healthy New Year',
                                  Colors.white,
                                  18,
                                  FontWeight.bold,
                                  FontStyle.normal),
                            ],
                          ),
                        ),
                        custombutton(() {}, Colors.white, 40, 60,
                            Text("Explore Now"), BorderRadius.circular(15))
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            height: h * 0.04,
          ),
          Padding(
              padding: const EdgeInsets.only(
                left: 13,
              ),
              child: customtext('In focus today', Colors.black, 20,
                  FontWeight.bold, FontStyle.normal)),
          SizedBox(
            height: h * 0.02,
          ),
          SizedBox(
            height: h * 0.28,
            child: ListView.builder(
                physics: BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                itemCount: page.length,
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                      padding: const EdgeInsets.only(right: 13, left: 13),
                      child: Stack(
                          alignment: AlignmentDirectional.topCenter,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 20),
                              child: Container(
                                height: h * 0.35,
                                width: w * 0.36,
                                decoration: BoxDecoration(
                                    color: Colors.grey,
                                    borderRadius: BorderRadius.circular(20)),
                                child: Center(
                                  child: SizedBox(
                                    width: w * 0.30,
                                    child: Column(
                                      children: [
                                        Padding(
                                            padding:
                                                const EdgeInsets.only(top: 53),
                                            child: customtext(
                                                page
                                                    .elementAt(index)['title']
                                                    .toString(),
                                                Colors.white,
                                                14,
                                                FontWeight.bold,
                                                FontStyle.normal)),
                                        SizedBox(height: h * 0.011),
                                        Image.asset(
                                          page[index]["image"].toString(),
                                          height: 110,
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Align(
                              alignment: Alignment.topCenter,
                              child: Container(
                                height: h * 0.07,
                                width: w * 0.15,
                                decoration: BoxDecoration(
                                  // ignore: prefer_const_literals_to_create_immutables
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey,
                                    )
                                  ],
                                  borderRadius: BorderRadius.circular(12),
                                  color: Colors.white,
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.only(top: 17),
                                  child: Column(
                                    children: [
                                      customtext('whole', Colors.black, 8,
                                          FontWeight.w400, FontStyle.italic),
                                      customtext('The Truth', Colors.black, 10,
                                          FontWeight.bold, FontStyle.normal)
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ]));
                }),
          ),
          SizedBox(
            height: h * 0.04,
          ),
          Padding(
              padding: const EdgeInsets.only(
                left: 13,
              ),
              child: customtext('Explore more categories', Colors.black, 20,
                  FontWeight.bold, FontStyle.normal)),
          SizedBox(
            height: h * 0.02,
          ),
          SizedBox(
            height: h * 0.04,
          ),
          Padding(
              padding: const EdgeInsets.only(
                left: 13,
              ),
              child: customtext('Household favourites', Colors.black, 20,
                  FontWeight.bold, FontStyle.normal)),
          SizedBox(
            height: h * 0.02,
          ),
          SizedBox(
            height: h * 0.28,
            child: ListView.builder(
                physics: BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                itemCount: page.length,
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                      padding: const EdgeInsets.only(right: 13, left: 13),
                      child: Stack(
                          alignment: AlignmentDirectional.topCenter,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 20),
                              child: Container(
                                height: h * 0.35,
                                width: w * 0.36,
                                decoration: BoxDecoration(
                                    color: Colors.amber.withOpacity(0.7),
                                    borderRadius: BorderRadius.circular(20)),
                                child: Center(
                                  child: SizedBox(
                                    width: w * 0.30,
                                    child: Column(
                                      children: [
                                        Padding(
                                            padding:
                                                const EdgeInsets.only(top: 53),
                                            child: customtext(
                                                page
                                                    .elementAt(index)['title']
                                                    .toString(),
                                                Colors.white,
                                                14,
                                                FontWeight.bold,
                                                FontStyle.normal)),
                                        SizedBox(height: h * 0.011),
                                        Image.asset(
                                          page[index]["image"]..toString(),
                                          height: 110,
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Align(
                              alignment: Alignment.topCenter,
                              child: Container(
                                height: h * 0.07,
                                width: w * 0.15,
                                decoration: BoxDecoration(
                                  // ignore: prefer_const_literals_to_create_immutables
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey,
                                    )
                                  ],
                                  borderRadius: BorderRadius.circular(12),
                                  color: Colors.white,
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.only(top: 17),
                                  child: Column(
                                    children: [
                                      customtext('whole', Colors.black, 8,
                                          FontWeight.w400, FontStyle.italic),
                                      customtext('The Truth', Colors.black, 10,
                                          FontWeight.bold, FontStyle.normal)
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ]));
                }),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 13, right: 13, top: 23),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  customtext('Laundry made easier', Colors.green, 20,
                      FontWeight.bold, FontStyle.normal),
                  Icon(
                    Icons.arrow_circle_right,
                    color: Colors.green,
                    size: 23,
                  )
                ]),
          ),
          Padding(
              padding: const EdgeInsets.only(left: 13, top: 4),
              child: customtext('With this collection.', Colors.green, 15,
                  FontWeight.normal, FontStyle.normal)),
          SizedBox(
            height: h * 0.02,
          ),
          SizedBox(
            height: h * 0.25,
            child: ListView.builder(
                physics: BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                itemCount: page.length,
                itemBuilder: (BuildContext context, int index) {
                  return SizedBox(
                    width: w * 0.38,
                    child: Padding(
                      padding: const EdgeInsets.only(right: 13, left: 13),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            height: h * 0.11,
                            width: w * 0.38,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(
                                      page[index]["image"]..toString())),
                              borderRadius: BorderRadius.circular(15),
                              color: Color.fromARGB(255, 231, 238, 216),
                            ),
                          ),
                          SizedBox(height: 12),
                          customtext(
                              page.elementAt(index)['subtitle'].toString(),
                              Colors.black,
                              12,
                              FontWeight.normal,
                              FontStyle.normal),
                          customtext(
                              page.elementAt(index)['title'].toString(),
                              Colors.black,
                              14,
                              FontWeight.bold,
                              FontStyle.normal),
                          SizedBox(
                            height: h * 0.015,
                          ),
                          customtext(
                              page.elementAt(index)['kg'].toString(),
                              Colors.black,
                              12,
                              FontWeight.normal,
                              FontStyle.normal),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                children: [
                                  Text(
                                    page.elementAt(index)['prise'].toString(),
                                    style: TextStyle(
                                        color: Colors.black,
                                        decoration: TextDecoration.lineThrough,
                                        fontSize: 12),
                                  ),
                                  customtext(
                                      page
                                          .elementAt(index)['subprise']
                                          .toString(),
                                      Colors.black,
                                      12,
                                      FontWeight.normal,
                                      FontStyle.normal),
                                ],
                              ),
                              Container(
                                height: 25,
                                width: 60,
                                decoration: BoxDecoration(
                                    border: Border.all(color: Colors.black),
                                    borderRadius: BorderRadius.circular(7)),
                                child: Center(
                                    child: customtext('ADD', Colors.amber, 15,
                                        FontWeight.bold, FontStyle.normal)),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  );
                }),
          ),
          SizedBox(
            height: h * 0.04,
          ),
          Container(
            height: h * 0.65,
            width: 10,
            color: Colors.blueGrey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 13, top: 25),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'MUST TRY',
                        style: TextStyle(
                            color: Colors.greenAccent,
                            fontSize: 12,
                            letterSpacing: 3),
                      ),
                      SizedBox(
                        height: h * 0.002,
                      ),
                      customtext('New finds for you', Colors.greenAccent, 25,
                          FontWeight.bold, FontStyle.normal),
                    ],
                  ),
                ),
                SizedBox(
                  height: h * 0.02,
                ),
                SizedBox(
                  height: h * 0.42,
                  child: ListView.builder(
                      physics: BouncingScrollPhysics(),
                      scrollDirection: Axis.horizontal,
                      itemCount: page.length,
                      itemBuilder: (BuildContext context, int index) {
                        return Column(
                          children: [
                            Padding(
                                padding:
                                    const EdgeInsets.only(right: 13, left: 13),
                                child: Container(
                                  height: h * 0.20,
                                  width: w * 0.32,
                                  decoration: BoxDecoration(
                                      color: Colors.amber.withOpacity(0.5),
                                      borderRadius: BorderRadius.circular(15),
                                      image: DecorationImage(
                                          image: AssetImage(page[index]["image"]
                                            ..toString()))),
                                )),
                            SizedBox(
                              height: h * 0.02,
                            ),
                            Container(
                              height: h * 0.20,
                              width: w * 0.32,
                              decoration: BoxDecoration(
                                  color: Colors.blue.withOpacity(0.5),
                                  borderRadius: BorderRadius.circular(15),
                                  image: DecorationImage(
                                      image: AssetImage(
                                          page[index]["image"]..toString()))),
                            ),
                          ],
                        );
                      }),
                ),
                SizedBox(
                  height: h * 0.045,
                ),
                Padding(
                    padding: const EdgeInsets.only(right: 13, left: 13),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        customtext(
                            'Experience the collection',
                            Colors.greenAccent,
                            20,
                            FontWeight.bold,
                            FontStyle.normal),
                        Icon(
                          Icons.arrow_circle_right,
                          color: Colors.greenAccent,
                          size: 20,
                        )
                      ],
                    )),
              ],
            ),
          ),
          SizedBox(
            height: h * 0.050,
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 13,
              right: 13,
            ),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  customtext('Immunity boosters', Colors.purple, 20,
                      FontWeight.bold, FontStyle.normal),
                  Icon(
                    Icons.arrow_circle_right,
                    color: Colors.purple,
                    size: 23,
                  )
                ]),
          ),
          Padding(
              padding: const EdgeInsets.only(left: 13, top: 4),
              child: customtext('to stir up your inner strength.',
                  Colors.purple, 15, FontWeight.normal, FontStyle.normal)),
          SizedBox(
            height: h * 0.02,
          ),
          SizedBox(
            height: h * 0.25,
            child: ListView.builder(
                physics: BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                itemCount: page.length,
                itemBuilder: (BuildContext context, int index) {
                  return SizedBox(
                    width: w * 0.38,
                    child: Padding(
                      padding: const EdgeInsets.only(right: 13, left: 13),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            height: h * 0.11,
                            width: w * 0.38,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(
                                      page[index]["image"]..toString())),
                              borderRadius: BorderRadius.circular(15),
                              color: Color.fromARGB(255, 231, 238, 216),
                            ),
                          ),
                          SizedBox(height: 12),
                          customtext(
                              page.elementAt(index)['subtitle'].toString(),
                              Colors.black,
                              12,
                              FontWeight.normal,
                              FontStyle.normal),
                          customtext(
                              page.elementAt(index)['title'].toString(),
                              Colors.black,
                              14,
                              FontWeight.bold,
                              FontStyle.normal),
                          SizedBox(
                            height: h * 0.015,
                          ),
                          customtext(
                              page.elementAt(index)['kg'].toString(),
                              Colors.black,
                              12,
                              FontWeight.normal,
                              FontStyle.normal),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                children: [
                                  Text(
                                    page.elementAt(index)['prise'].toString(),
                                    style: TextStyle(
                                        color: Colors.black,
                                        decoration: TextDecoration.lineThrough,
                                        fontSize: 12),
                                  ),
                                  customtext(
                                      page
                                          .elementAt(index)['subprise']
                                          .toString(),
                                      Colors.black,
                                      12,
                                      FontWeight.normal,
                                      FontStyle.normal),
                                ],
                              ),
                              Container(
                                height: 25,
                                width: 60,
                                decoration: BoxDecoration(
                                    border: Border.all(color: Colors.black),
                                    borderRadius: BorderRadius.circular(7)),
                                child: Center(
                                    child: customtext('ADD', Colors.amber, 15,
                                        FontWeight.bold, FontStyle.normal)),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  );
                }),
          ),
          SizedBox(
            height: h * 0.050,
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 13,
              right: 13,
            ),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  customtext('Protect yourself', Colors.cyanAccent, 20,
                      FontWeight.bold, FontStyle.normal),
                  Icon(
                    Icons.arrow_circle_right,
                    color: Colors.cyanAccent,
                    size: 23,
                  )
                ]),
          ),
          Padding(
              padding: const EdgeInsets.only(left: 13, top: 4),
              child: customtext('from harmful germs with Dettol.',
                  Colors.cyanAccent, 15, FontWeight.normal, FontStyle.normal)),
          SizedBox(
            height: h * 0.02,
          ),
          SizedBox(
            height: h * 0.25,
            child: ListView.builder(
                physics: BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                itemCount: page.length,
                itemBuilder: (BuildContext context, int index) {
                  return SizedBox(
                    width: w * 0.38,
                    child: Padding(
                      padding: const EdgeInsets.only(right: 13, left: 13),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            height: h * 0.11,
                            width: w * 0.38,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(
                                      page[index]["image"]..toString())),
                              borderRadius: BorderRadius.circular(15),
                              color: Color.fromARGB(255, 231, 238, 216),
                            ),
                          ),
                          SizedBox(height: 12),
                          customtext(
                              page.elementAt(index)['subtitle'].toString(),
                              Colors.black,
                              12,
                              FontWeight.normal,
                              FontStyle.normal),
                          customtext(
                              page.elementAt(index)['title'].toString(),
                              Colors.black,
                              14,
                              FontWeight.bold,
                              FontStyle.normal),
                          SizedBox(
                            height: h * 0.015,
                          ),
                          customtext(
                              page.elementAt(index)['kg'].toString(),
                              Colors.black,
                              12,
                              FontWeight.normal,
                              FontStyle.normal),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                children: [
                                  Text(
                                    page.elementAt(index)['prise'].toString(),
                                    style: TextStyle(
                                        color: Colors.black,
                                        decoration: TextDecoration.lineThrough,
                                        fontSize: 12),
                                  ),
                                  customtext(
                                      page
                                          .elementAt(index)['subprise']
                                          .toString(),
                                      Colors.black,
                                      12,
                                      FontWeight.normal,
                                      FontStyle.normal),
                                ],
                              ),
                              Container(
                                height: 25,
                                width: 60,
                                decoration: BoxDecoration(
                                    border: Border.all(color: Colors.black),
                                    borderRadius: BorderRadius.circular(7)),
                                child: Center(
                                    child: customtext('ADD', Colors.amber, 15,
                                        FontWeight.bold, FontStyle.normal)),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  );
                }),
          ),
          SizedBox(
            height: h * 0.050,
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 13,
              right: 13,
            ),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  customtext('Play safely with the', Colors.blueAccent, 20,
                      FontWeight.bold, FontStyle.normal),
                  Icon(
                    Icons.arrow_circle_right,
                    color: Colors.blueAccent,
                    size: 23,
                  )
                ]),
          ),
          Padding(
              padding: const EdgeInsets.only(left: 13, top: 4),
              child: customtext('range of protection from Durex.',
                  Colors.blueAccent, 15, FontWeight.normal, FontStyle.normal)),
          SizedBox(
            height: h * 0.02,
          ),
          SizedBox(
            height: h * 0.25,
            child: ListView.builder(
                physics: BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                itemCount: page.length,
                itemBuilder: (BuildContext context, int index) {
                  return SizedBox(
                    width: w * 0.38,
                    child: Padding(
                      padding: const EdgeInsets.only(right: 13, left: 13),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            height: h * 0.11,
                            width: w * 0.38,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(
                                      page[index]["image"]..toString())),
                              borderRadius: BorderRadius.circular(15),
                              color: Color.fromARGB(255, 231, 238, 216),
                            ),
                          ),
                          SizedBox(height: 12),
                          customtext(
                              page.elementAt(index)['subtitle'].toString(),
                              Colors.black,
                              12,
                              FontWeight.normal,
                              FontStyle.normal),
                          customtext(
                              page.elementAt(index)['title'].toString(),
                              Colors.black,
                              14,
                              FontWeight.bold,
                              FontStyle.normal),
                          SizedBox(
                            height: h * 0.015,
                          ),
                          customtext(
                              page.elementAt(index)['kg'].toString(),
                              Colors.black,
                              12,
                              FontWeight.normal,
                              FontStyle.normal),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                children: [
                                  Text(
                                    page.elementAt(index)['prise'].toString(),
                                    style: TextStyle(
                                        color: Colors.black,
                                        decoration: TextDecoration.lineThrough,
                                        fontSize: 12),
                                  ),
                                  customtext(
                                      page
                                          .elementAt(index)['subprise']
                                          .toString(),
                                      Colors.black,
                                      12,
                                      FontWeight.normal,
                                      FontStyle.normal),
                                ],
                              ),
                              Container(
                                height: 25,
                                width: 60,
                                decoration: BoxDecoration(
                                    border: Border.all(color: Colors.black),
                                    borderRadius: BorderRadius.circular(7)),
                                child: Center(
                                    child: customtext('ADD', Colors.amber, 15,
                                        FontWeight.bold, FontStyle.normal)),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  );
                }),
          ),
        ],
      ),
    );
  }
}
