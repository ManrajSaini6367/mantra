import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:food_app/Resueable/Utils.dart';

class Hometop extends StatefulWidget {
  const Hometop({super.key});

  @override
  State<Hometop> createState() => _HometopState();
}

class _HometopState extends State<Hometop> {
  List container = [
    {
      "image": "assets/Images/new-offer.png",
      "title": "50% off upto ₹90",
      "subtitle": "use welcome50 | above ₹149"
    },
    {
      "image": "assets/Images/new.png",
      "title": "Free falafel-e",
      "subtitle": "no code required | above ₹499"
    },
    {
      "image": "assets/Images/guarantee.png",
      "title": "20% off upto ₹120",
      "subtitle": "use federalcc | above ₹249"
    },
    {
      "image": "assets/Images/discount.png",
      "title": "40% off upto ₹80",
      "subtitle": "use trynew | above ₹159"
    },
  ];
  int currentIndex = 0;
  var w, h;
  @override
  Widget build(BuildContext context) {
    w = MediaQuery.of(context).size.width;
    h = MediaQuery.of(context).size.height;
    return Scaffold(
      body: ListView(
        children: [
          Container(
            width: w * 1,
            height: h * 0.3635,
            decoration: const BoxDecoration(
                color: Color.fromARGB(255, 236, 230, 230),
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20))),
            child: Padding(
              padding: const EdgeInsets.only(
                left: 13,
                right: 13,
                bottom: 10,
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: h * 0.07,
                        width: w * 0.14,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white,
                        ),
                        margin: const EdgeInsets.only(left: 140),
                        child: Center(
                            child: customtext('bakingo', Colors.red, 13,
                                FontWeight.w600, FontStyle.italic)),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 5),
                        child: Row(
                          children: const [Icon(Icons.search), Text('Search')],
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: h * 0.005,
                  ),
                  Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Container(
                      height: h * 0.266,
                      width: w * 1,
                      child: Padding(
                        padding: const EdgeInsets.only(
                            right: 13, left: 13, top: 10, bottom: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                customtext('Shankar Samosa', Colors.black, 21,
                                    FontWeight.bold, FontStyle.normal),
                                Row(
                                  children: [
                                    const Icon(
                                      Icons.share,
                                      size: 20,
                                    ),
                                    const SizedBox(width: 15),
                                    customtext('♡', Colors.black, 21,
                                        FontWeight.normal, FontStyle.normal)
                                  ],
                                ),
                              ],
                            ),
                            SizedBox(
                              height: h * 0.007,
                            ),
                            Row(
                              children: [
                                const Icon(
                                  Icons.star,
                                  size: 20,
                                ),
                                customtext(
                                    '4.4(500+ratings) - ₹299 for two',
                                    Colors.black,
                                    15,
                                    FontWeight.bold,
                                    FontStyle.normal)
                              ],
                            ),
                            SizedBox(
                              height: h * 0.006,
                            ),
                            const Text("Bakery, Desserts"),
                            SizedBox(
                              height: h * 0.007,
                            ),
                            const Divider(
                              thickness: 1,
                            ),
                            SizedBox(
                              height: h * 0.007,
                            ),
                            Row(
                              children: [
                                Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      customtext('Outlet', Colors.black, 14,
                                          FontWeight.bold, FontStyle.normal),
                                      SizedBox(
                                        height: h * 0.006,
                                      ),
                                      customtext('34mins', Colors.black, 14,
                                          FontWeight.bold, FontStyle.normal)
                                    ]),
                                Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      customtext(
                                          'Tilak Nagar',
                                          Colors.black,
                                          13,
                                          FontWeight.normal,
                                          FontStyle.normal),
                                      SizedBox(
                                        height: h * 0.006,
                                      ),
                                      customtext(
                                          'Delivery to Taron Ki Koont',
                                          Colors.black,
                                          13,
                                          FontWeight.normal,
                                          FontStyle.normal)
                                    ]),
                              ],
                            ),
                            SizedBox(
                              height: h * 0.007,
                            ),
                            const Divider(
                              thickness: 1,
                            ),
                            SizedBox(
                              height: h * 0.007,
                            ),
                            Row(children: [
                              const Icon(
                                Icons.notifications,
                                size: 17,
                                color: Colors.red,
                              ),
                              customtext('9.4km |', Colors.black, 14,
                                  FontWeight.bold, FontStyle.normal),
                              const Text(
                                " ₹65 ",
                                style: TextStyle(
                                    decoration: TextDecoration.lineThrough),
                              ),
                              customtext(
                                  'Free Delivery on your order',
                                  Colors.black,
                                  13,
                                  FontWeight.normal,
                                  FontStyle.normal)
                            ])
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: h * 0.025,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 13, right: 13),
            child: Container(
              width: w * 1,
              height: h * 0.095,
              decoration: BoxDecoration(
                  border: Border.all(),
                  borderRadius: BorderRadius.circular(20)),
              child: CarouselSlider(
                options: CarouselOptions(
                  autoPlayCurve: Curves.fastOutSlowIn,
                  autoPlay: true,
                  reverse: false,
                  height: h * 0.084,
                  viewportFraction: 01,
                  enlargeCenterPage: true,
                  onPageChanged: (position, reason) {
                    setState(() {
                      currentIndex = position;
                      print(currentIndex);
                    });
                  },
                  enableInfiniteScroll: true,
                ),
                items: container.map<Widget>((i) {
                  return Builder(
                    builder: (BuildContext context) {
                      return Row(
                        // mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SizedBox(width: w * 0.03),
                          Image.asset(
                            container[currentIndex]['image'],
                            height: 45,
                          ),
                          SizedBox(width: w * 0.03),
                          Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                customtext(
                                    container
                                        .elementAt(currentIndex)["title"]
                                        .toString(),
                                    Colors.black,
                                    24,
                                    FontWeight.bold,
                                    FontStyle.normal),
                                SizedBox(
                                  height: h * 0.003,
                                ),
                                customtext(
                                    container
                                        .elementAt(currentIndex)["subtitle"]
                                        .toString(),
                                    Colors.black,
                                    15,
                                    FontWeight.normal,
                                    FontStyle.normal),
                              ])
                        ],
                      );
                    },
                  );
                }).toList(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
