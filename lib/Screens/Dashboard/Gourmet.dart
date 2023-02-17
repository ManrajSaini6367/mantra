// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:food_app/Resueable/Utils.dart';

class Gouemet extends StatefulWidget {
  const Gouemet({super.key});

  @override
  State<Gouemet> createState() => _GouemetState();
}

class _GouemetState extends State<Gouemet> {
  var w, h;
  List text = [
    "Filter",
    "Sort by",
    "Fast Delivary",
    "Cuisines",
    "New on Swiggy",
    "Ratings 4.0+",
    "Pure Veg",
    "Offers",
  ];
  List page = [
    {
      "image": "assets/Images/slivar2.webp",
      "title": "Faasos-Wraps",
      'subtitle': 'Indian, Bakery',
      'subtitle1': 'Ramnagar.8.3km'
    },
    {
      "image": "assets/Images/slivar3.jpeg",
      "title": "Slice N'Buns",
      'subtitle': 'Indian, North Indian',
      'subtitle1': 'Malviya nagar.5.3km'
    },
    {
      "image": "assets/Images/Food.png",
      "title": "Beehrouz Biryani",
      'subtitle': 'Desserts, Bakery',
      'subtitle1': 'Vaishali Nagar.5.6km'
    },
    {
      "image": "assets/Images/foodimage.webp",
      "title": "Faasos-Wraps",
      'subtitle': 'Indian, Bakery',
      'subtitle1': 'Ramnagar.8.3km'
    },
    {
      "image": "assets/Images/slivar2.webp",
      "title": "Slice N'Buns",
      'subtitle': 'Indian, North Indian',
      'subtitle1': 'Malviya nagar.5.3km'
    },
    {
      "image": "assets/Images/foodimage.webp",
      "title": "Beehrouz Biryani",
      'subtitle': 'Desserts, Bakery',
      'subtitle1': 'Vaishali Nagar.5.6km'
    },
  ];

  @override
  Widget build(BuildContext context) {
    w = MediaQuery.of(context).size.width;
    h = MediaQuery.of(context).size.height;
    return Scaffold(
      body: ListView(physics: BouncingScrollPhysics(), children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
                height: h * 0.60,
                width: w * 1,
                decoration: const BoxDecoration(
                    color: Colors.black,
                    image: DecorationImage(
                        image: AssetImage(
                            "assets/Images/Yazz-banner1-removebg-preview.png"))),
                child: Column(
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(right: 15, top: 15),
                      child: Align(
                        alignment: Alignment.centerRight,
                        child: Icon(
                          Icons.search,
                          
                          color: Colors.white,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: h * 0.44,
                    ),
                    customtext('gourmet', Colors.white, 25, FontWeight.bold,
                        FontStyle.italic),
                    SizedBox(
                      height: h * 0.005,
                    ),
                    customtext('With an immersive ', Colors.white, 15,
                        FontWeight.normal, FontStyle.normal),
                    customtext('manu experience', Colors.white, 15,
                        FontWeight.normal, FontStyle.normal),
                  ],
                )),
            SizedBox(
              height: h * 0.02,
            ),
            Padding(
                padding: const EdgeInsets.only(
                  left: 13,
                ),
                child: SizedBox(
                    height: 28,
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: text.length,
                        physics: const BouncingScrollPhysics(),
                        itemBuilder: (BuildContext context, int index) {
                          return Container(
                              height: 38,
                            
                              margin: const EdgeInsets.only(right: 10),
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                border: Border.all(),
                              ),
                              child: Text(
                                text[index].toString(),
                              ));
                        }))),
            SizedBox(
              height: h * 0.045,
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 13,
                right: 13,
              ),
              child: customtext('All Gourmet Restaurants', Colors.black, 20,
                  FontWeight.bold, FontStyle.normal),
            ),
            SizedBox(
              height: h * 0.005,
            ),
            ListView.builder(
                physics: BouncingScrollPhysics(),
                shrinkWrap: true,
                itemCount: page.length,
                scrollDirection: Axis.vertical,
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: const EdgeInsets.all(13),
                    child: Card(
                      elevation: 2,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(14),
                      ),
                      child: Container(
                        height: h * 0.37,
                        width: w * 1,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              height: h * 0.21,
                              width: w * 1,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(14),
                                      topLeft: Radius.circular(14)),
                                  image: DecorationImage(
                                      image: AssetImage(
                                          page[index]['image'].toString()),
                                      fit: BoxFit.fill)),
                              child: Column(
                                children: [
                                  Container(
                                    height: h * 0.025,
                                    width: w * 0.27,
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(5)),
                                    margin:
                                        EdgeInsets.only(top: 145, right: 223),
                                    child: Row(
                                      children: [
                                        customtext('50%OFF', Colors.orange, 12,
                                            FontWeight.bold, FontStyle.normal),
                                        customtext(
                                            'UPTO₹90',
                                            Colors.orange,
                                            12,
                                            FontWeight.normal,
                                            FontStyle.normal),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(13),
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    customtext(
                                        page
                                            .elementAt(index)["title"]
                                            .toString(),
                                        Colors.black,
                                        17,
                                        FontWeight.bold,
                                        FontStyle.normal),
                                    SizedBox(height: 8),
                                    customtext(
                                        page
                                            .elementAt(index)["subtitle"]
                                            .toString(),
                                        Colors.black,
                                        12,
                                        FontWeight.normal,
                                        FontStyle.normal),
                                    SizedBox(height: 5),
                                    customtext(
                                        page
                                            .elementAt(index)["subtitle1"]
                                            .toString(),
                                        Colors.black,
                                        13,
                                        FontWeight.normal,
                                        FontStyle.normal),
                                    SizedBox(height: 4),
                                    Divider(
                                      thickness: 1,
                                    ),
                                    SizedBox(height: 5),
                                    Row(
                                      children: [
                                        Icon(
                                          Icons.star,
                                          size: 12,
                                        ),
                                        customtext(
                                            '4.2 - 47 mints -  ₹700 for two',
                                            Colors.black,
                                            12,
                                            FontWeight.normal,
                                            FontStyle.normal)
                                      ],
                                    )
                                  ]),
                            )
                          ],
                        ),
                      ),
                    ),
                  );
                }),
          ],
        )
      ]),
    );
  }
}
