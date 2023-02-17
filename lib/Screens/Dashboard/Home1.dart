// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:food_app/Resueable/Utils.dart';
import 'Location.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List images = ["assets/Images/slivar2.webp", "assets/Images/slivar3.jpeg"];
  List page = [
    {
      "image": "assets/Images/slivar2.webp",
      "title": "Faasos-Wraps",
    },
    {
      "image": "assets/Images/slivar3.jpeg",
      "title": "Slice N'Buns",
    },
    {
      "image": "assets/Images/Food.png",
      "title": "Beehrouz Biryani",
    },
    {
      "image": "assets/Images/foodimage.webp",
      "title": "Faasos-Wraps",
    },
    {
      "image": "assets/Images/slivar2.webp",
      "title": "Slice N'Buns",
    },
    {
      "image": "assets/Images/foodimage.webp",
      "title": "Beehrouz Biryani",
    },
  ];
  List page1 = [
    {"image": "assets/Images/foodimage.webp", "title": "Vimal Vilas"},
    {"image": "assets/Images/Food.png", "title": "La Pino'z Pizza"},
    {"image": "assets/Images/foodimage.webp", "title": "Mahaveer Rabri..."},
    {"image": "assets/Images/slivar2.webp", "title": "Slice N'Buns"},
    {"image": "assets/Images/slivar2.webp", "title": "Faasos-Wraps"},
    {"image": "assets/Images/slivar3.jpeg", "title": "Slice N'Buns"},
  ];
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

  int currentIndex = 0;
  var w, h;
  @override
  Widget build(BuildContext context) {
    w = MediaQuery.of(context).size.width;
    h = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        physics: BouncingScrollPhysics(),
        slivers: <Widget>[
          SliverAppBar(
              expandedHeight: 105,
              backgroundColor: Colors.white,
              snap: false,
              pinned: true,
              floating: false,
              flexibleSpace: FlexibleSpaceBar(
                  background: Location(),
                  centerTitle: true,
                  title: Container(
                    height: 24,
                    margin: EdgeInsets.all(5),
                    padding: EdgeInsets.only(left: 5),
                    decoration: BoxDecoration(
                        color: Color.fromARGB(186, 218, 207, 207),
                        borderRadius: BorderRadius.circular(5)),
                    child: TextFormField(
                      style: TextStyle(fontSize: 12),
                      decoration: InputDecoration(
                          hintStyle: TextStyle(fontSize: 12),
                          hintText: "Search  for restaurant, item or more",
                          border: InputBorder.none,
                          suffixIcon: Icon(
                            Icons.search,
                            size: 17,
                          )),
                    ),
                  ))),
          SliverList(
            delegate: SliverChildListDelegate([
              Padding(
                padding: const EdgeInsets.only(
                  top: 20,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                        right: 13,
                        left: 13,
                      ),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: List.generate(
                              2,
                              (index) => Container(
                                    height: 60,
                                    width: 150,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        image: DecorationImage(
                                            image: AssetImage(
                                                'assets/Images/foodimage.webp'),
                                            fit: BoxFit.fill)),
                                  ))),
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    CarouselSlider(
                      options: CarouselOptions(
                        autoPlayCurve: Curves.fastOutSlowIn,
                        autoPlay: true,
                        reverse: false,
                        height: 170,
                        viewportFraction: 0.8,
                        enlargeCenterPage: true,
                        onPageChanged: (position, reason) {
                          setState(() {
                            currentIndex = position;
                            print(currentIndex);
                          });
                          // print(reason);
                          // print(CarouselPageChangedReason.controller);
                        },
                        enableInfiniteScroll: true,
                      ),
                      items: page1.map<Widget>((i) {
                        return Builder(
                          builder: (BuildContext context) {
                            return Container(
                                height: 170,
                                width: 300,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    image: DecorationImage(
                                        image: AssetImage(i['image']),
                                        fit: BoxFit.fill)));
                          },
                        );
                      }).toList(),
                    ),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: List.generate(
                          page1.length,
                          (index) => Center(
                            child: AnimatedContainer(
                              duration: Duration(milliseconds: 500),
                              height: 20,
                              width: 40,
                              alignment: Alignment.center,
                              margin: EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                color: currentIndex == index
                                    ? Colors.black
                                    : Colors.transparent,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: currentIndex == index
                                  ? Text(
                                      "${currentIndex + 1}/${page1.length}",
                                      style: TextStyle(color: Colors.white),
                                    )
                                  : Container(
                                      height: 10,
                                      width: 10,
                                      color: Colors.grey,
                                    ),
                            ),
                          ),
                        )),
                    SizedBox(height: 30),
                    Padding(
                        padding: const EdgeInsets.only(
                          left: 13,
                        ),
                        child: customtext('Top rated near you', Colors.black,
                            18, FontWeight.bold, FontStyle.normal)),
                    SizedBox(height: 10),
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 13,
                      ),
                      child: SizedBox(
                          height: 210,
                          child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: page.length,
                              physics: BouncingScrollPhysics(),
                              itemBuilder: (BuildContext context, int index) {
                                return Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      height: 155,
                                      width: 140,
                                      margin: EdgeInsets.only(right: 16),
                                      decoration: BoxDecoration(
                                        color: Colors.red,
                                        image: DecorationImage(
                                            image: AssetImage(page[index]
                                                    ["image"]
                                                .toString()),
                                            fit: BoxFit.fill),
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Align(
                                                alignment: Alignment.topRight,
                                                child: customtext(
                                                    "♡",
                                                    Colors.white,
                                                    28,
                                                    FontWeight.normal,
                                                    FontStyle.normal)),
                                            Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                customtext(
                                                    "50%OFF",
                                                    Colors.white,
                                                    18,
                                                    FontWeight.bold,
                                                    FontStyle.normal),
                                                customtext(
                                                    "UPTO₹100",
                                                    Colors.white,
                                                    10,
                                                    FontWeight.normal,
                                                    FontStyle.normal)
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 7,
                                    ),
                                    Text(
                                      page.elementAt(index)["title"].toString(),
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 18),
                                    ),
                                    customtext("✪4.4 * 31 mins", Colors.black,
                                        14, FontWeight.normal, FontStyle.normal)
                                  ],
                                );
                              })),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Padding(
                        padding: const EdgeInsets.only(
                          left: 13,
                        ),
                        child: customtext('Get it quickly', Colors.black, 18,
                            FontWeight.bold, FontStyle.normal)),
                    SizedBox(height: 10),
                    Padding(
                        padding: const EdgeInsets.only(
                          left: 13,
                        ),
                        child: SizedBox(
                          height: 210,
                          child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: page.length,
                              physics: BouncingScrollPhysics(),
                              itemBuilder: (BuildContext context, int index) {
                                return Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      height: 155,
                                      width: 140,
                                      margin: EdgeInsets.only(right: 16),
                                      decoration: BoxDecoration(
                                        color: Colors.red,
                                        image: DecorationImage(
                                            image: AssetImage(page[index]
                                                    ["image"]
                                                .toString()),
                                            fit: BoxFit.fill),
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Align(
                                                alignment: Alignment.topRight,
                                                child: customtext(
                                                    "♡",
                                                    Colors.white,
                                                    28,
                                                    FontWeight.normal,
                                                    FontStyle.normal)),
                                            Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                customtext(
                                                    "50%OFF",
                                                    Colors.white,
                                                    18,
                                                    FontWeight.bold,
                                                    FontStyle.normal),
                                                customtext(
                                                    "UPTO₹100",
                                                    Colors.white,
                                                    10,
                                                    FontWeight.normal,
                                                    FontStyle.normal)
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 7,
                                    ),
                                    Text(
                                      page.elementAt(index)["title"].toString(),
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 18),
                                    ),
                                    customtext("✪4.4 * 31 mins", Colors.black,
                                        14, FontWeight.normal, FontStyle.normal)
                                  ],
                                );
                              }),
                        )),
                    SizedBox(height: 13),
                    Padding(
                        padding: const EdgeInsets.only(
                          left: 13,
                        ),
                        child: customtext("What's on your mind?", Colors.black,
                            17, FontWeight.bold, FontStyle.normal)),
                    SizedBox(
                        height: 270,
                        child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: 50,
                            physics: BouncingScrollPhysics(),
                            itemBuilder: (BuildContext context, int index) {
                              return Column(children: [
                                Image.asset(
                                  'assets/Images/shape image.jpg',
                                  width: 100,
                                  height: 100,
                                ),
                                customtext("Pizza", Colors.black, 15,
                                    FontWeight.normal, FontStyle.normal),
                                SizedBox(height: 30),
                                Image.asset(
                                  'assets/Images/fast-food-circle_1284-4385.webp',
                                  width: 90,
                                  height: 80,
                                ),
                                customtext("Bagar", Colors.black, 15,
                                    FontWeight.normal, FontStyle.normal)
                              ]);
                            })),
                    SizedBox(height: 30),
                    Padding(
                        padding: EdgeInsets.only(
                          left: 13,
                        ),
                        child: customtext(
                            "992 restaurants to explore",
                            Colors.black,
                            20,
                            FontWeight.bold,
                            FontStyle.normal)),
                    ListView.builder(
                        scrollDirection: Axis.vertical,
                        itemCount: page.length,
                        shrinkWrap: true,
                        physics: BouncingScrollPhysics(),
                        itemBuilder: (BuildContext context, int index) {
                          return Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  height: 155,
                                  width: 140,
                                  margin: EdgeInsets.only(
                                      right: 16, left: 10, bottom: 13),
                                  decoration: BoxDecoration(
                                    color: Colors.red,
                                    image: DecorationImage(
                                        image: AssetImage(
                                            page[index]["image"].toString()),
                                        fit: BoxFit.fill),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Align(
                                            alignment: Alignment.topRight,
                                            child: customtext(
                                                "♡",
                                                Colors.white,
                                                28,
                                                FontWeight.normal,
                                                FontStyle.normal)),
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            customtext(
                                                "50%OFF",
                                                Colors.white,
                                                18,
                                                FontWeight.bold,
                                                FontStyle.normal),
                                            customtext(
                                                "UPTO₹100",
                                                Colors.white,
                                                10,
                                                FontWeight.normal,
                                                FontStyle.normal)
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 10),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        page
                                            .elementAt(index)["title"]
                                            .toString(),
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 22),
                                      ),
                                      customtext(
                                          "✪4.4(1k+)* 31 mins",
                                          Colors.black,
                                          18,
                                          FontWeight.bold,
                                          FontStyle.normal),
                                      customtext(
                                          "Pizzas Ltalain",
                                          Colors.black,
                                          14,
                                          FontWeight.normal,
                                          FontStyle.normal),
                                      customtext(
                                          "Duragapur . 2.6km",
                                          Colors.black,
                                          14,
                                          FontWeight.normal,
                                          FontStyle.normal),
                                      const Divider(
                                        color: Colors.white,
                                      ),
                                    ],
                                  ),
                                ),
                              ]);
                        }),
                    Stack(
                      children: [
                        Container(
                            width: w * 1,
                            height: h * .360,
                            color: Color.fromARGB(193, 0, 17, 7),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(12),
                                  child: Text(
                                    "Popular Brands",
                                    style: TextStyle(
                                        fontSize: 17,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                SizedBox(height: 20),
                                Padding(
                                    padding: const EdgeInsets.only(
                                      left: 13,
                                    ),
                                    child: SizedBox(
                                      height: 210,
                                      child: ListView.builder(
                                          scrollDirection: Axis.horizontal,
                                          itemCount: page.length,
                                          physics: BouncingScrollPhysics(),
                                          itemBuilder: (BuildContext context,
                                              int index) {
                                            return Column(
                                              children: [
                                                Container(
                                                  height: 155,
                                                  width: 140,
                                                  margin: EdgeInsets.only(
                                                      right: 16),
                                                  decoration: BoxDecoration(
                                                    color: Colors.red,
                                                    image: DecorationImage(
                                                        image: AssetImage(
                                                            page[index]["image"]
                                                                .toString()),
                                                        fit: BoxFit.fill),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10),
                                                  ),
                                                  child: Padding(
                                                    padding:
                                                        const EdgeInsets.all(
                                                            8.0),
                                                    child: Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        Align(
                                                            alignment: Alignment
                                                                .topRight,
                                                            child: customtext(
                                                                "♡",
                                                                Colors.white,
                                                                28,
                                                                FontWeight
                                                                    .normal,
                                                                FontStyle
                                                                    .normal)),
                                                        Column(
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: [
                                                            customtext(
                                                                "50%OFF",
                                                                Colors.white,
                                                                18,
                                                                FontWeight.bold,
                                                                FontStyle
                                                                    .normal),
                                                            customtext(
                                                                "UPTO₹100",
                                                                Colors.white,
                                                                10,
                                                                FontWeight
                                                                    .normal,
                                                                FontStyle
                                                                    .normal)
                                                          ],
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                                SizedBox(
                                                  height: 7,
                                                ),
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          right: 20),
                                                  child: Column(
                                                    children: [
                                                      Text(
                                                        page
                                                            .elementAt(
                                                                index)["title"]
                                                            .toString(),
                                                        style: TextStyle(
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            fontSize: 18),
                                                      ),
                                                      customtext(
                                                          "✪4.4 * 31 mins",
                                                          Colors.black,
                                                          14,
                                                          FontWeight.normal,
                                                          FontStyle.normal)
                                                    ],
                                                  ),
                                                )
                                              ],
                                            );
                                          }),
                                    )),
                              ],
                            )),
                      ],
                    ),
                    Padding(
                        padding: const EdgeInsets.only(
                          left: 13,
                        ),
                        child: SizedBox(
                            height: 1130,
                            child: ListView.builder(
                                scrollDirection: Axis.vertical,
                                itemCount: page.length,
                                physics: BouncingScrollPhysics(),
                                itemBuilder: (BuildContext context, int index) {
                                  return Row(children: [
                                    Column(
                                      children: [
                                        Container(
                                          height: 155,
                                          width: 140,
                                          margin: EdgeInsets.only(
                                              right: 16, top: 20),
                                          decoration: BoxDecoration(
                                            color: Colors.red,
                                            image: DecorationImage(
                                                image: AssetImage(page[index]
                                                        ["image"]
                                                    .toString()),
                                                fit: BoxFit.fill),
                                            borderRadius:
                                                BorderRadius.circular(10),
                                          ),
                                          child: Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Align(
                                                    alignment:
                                                        Alignment.topRight,
                                                    child: customtext(
                                                        "♡",
                                                        Colors.white,
                                                        28,
                                                        FontWeight.normal,
                                                        FontStyle.normal)),
                                                Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    customtext(
                                                        "50%OFF",
                                                        Colors.white,
                                                        18,
                                                        FontWeight.bold,
                                                        FontStyle.normal),
                                                    customtext(
                                                        "UPTO₹100",
                                                        Colors.white,
                                                        10,
                                                        FontWeight.normal,
                                                        FontStyle.normal)
                                                  ],
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          page
                                              .elementAt(index)["title"]
                                              .toString(),
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 22),
                                        ),
                                        customtext(
                                            "✪4.4(1k+)* 31 mins",
                                            Colors.black,
                                            18,
                                            FontWeight.bold,
                                            FontStyle.normal),
                                        customtext(
                                            "Pizzas Ltalain",
                                            Colors.black,
                                            14,
                                            FontWeight.normal,
                                            FontStyle.normal),
                                        customtext(
                                            "Duragapur . 2.6km",
                                            Colors.black,
                                            14,
                                            FontWeight.normal,
                                            FontStyle.normal),
                                        const Divider(
                                          color: Colors.white,
                                        ),
                                      ],
                                    ),
                                  ]);
                                }))),
                    Stack(
                      children: [
                        Container(
                            width: w * 1,
                            height: h * .360,
                            color: Color.fromARGB(193, 0, 14, 3),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(12),
                                  child: Text(
                                    "Top Offers",
                                    style: TextStyle(
                                        fontSize: 17,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                SizedBox(height: 20),
                                Padding(
                                    padding: const EdgeInsets.only(
                                      left: 13,
                                    ),
                                    child: SizedBox(
                                      height: 210,
                                      child: ListView.builder(
                                          scrollDirection: Axis.horizontal,
                                          itemCount: page.length,
                                          physics: BouncingScrollPhysics(),
                                          itemBuilder: (BuildContext context,
                                              int index) {
                                            return Column(
                                              children: [
                                                Container(
                                                  height: 155,
                                                  width: 140,
                                                  margin: EdgeInsets.only(
                                                      right: 16),
                                                  decoration: BoxDecoration(
                                                    color: Colors.red,
                                                    image: DecorationImage(
                                                        image: AssetImage(
                                                            page[index]["image"]
                                                                .toString()),
                                                        fit: BoxFit.fill),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10),
                                                  ),
                                                  child: Padding(
                                                    padding:
                                                        const EdgeInsets.all(
                                                            8.0),
                                                    child: Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        Align(
                                                            alignment: Alignment
                                                                .topRight,
                                                            child: customtext(
                                                                "♡",
                                                                Colors.white,
                                                                28,
                                                                FontWeight
                                                                    .normal,
                                                                FontStyle
                                                                    .normal)),
                                                        Column(
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: [
                                                            customtext(
                                                                "50%OFF",
                                                                Colors.white,
                                                                18,
                                                                FontWeight.bold,
                                                                FontStyle
                                                                    .normal),
                                                            customtext(
                                                                "UPTO₹100",
                                                                Colors.white,
                                                                10,
                                                                FontWeight
                                                                    .normal,
                                                                FontStyle
                                                                    .normal)
                                                          ],
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                                SizedBox(
                                                  height: 7,
                                                ),
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          right: 20),
                                                  child: Column(
                                                    children: [
                                                      Text(
                                                        page
                                                            .elementAt(
                                                                index)["title"]
                                                            .toString(),
                                                        style: TextStyle(
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            fontSize: 18),
                                                      ),
                                                      customtext(
                                                          "✪4.4 * 31 mins",
                                                          Colors.black,
                                                          14,
                                                          FontWeight.normal,
                                                          FontStyle.normal)
                                                    ],
                                                  ),
                                                )
                                              ],
                                            );
                                          }),
                                    )),
                              ],
                            )),
                      ],
                    )
                  ],
                ),
              ),
            ]),
          ),
        ],
      ),
    );
  }
}
