// ignore_for_file: sort_child_properties_last, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:food_app/Resueable/Utils.dart';

class Welcome extends StatefulWidget {
  const Welcome({super.key});

  @override
  State<Welcome> createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  var w, h;
  List text = [
    "Fruits",
    "Vegetables",
    "Breads",
    "Eat",
    "Other",
    "Fruits",
    "Vegetables",
    "Breads",
    "Eat",
    "Other"
  ];
  List vegebles = [
    {"Image": "assets/Images/tamatar-removebg-preview.png", "title": "Tamatar"},
    {"Image": "assets/Images/aalu-removebg-preview.png", "title": "Aalu"},
    {"Image": "assets/Images/piaaj-removebg-preview.png", "title": "Piaaj"},
    {"Image": "assets/Images/mirchi-removebg-preview.png", "title": "Mrchi"}
  ];
  var currentindex = 0;

  @override
  Widget build(BuildContext context) {
    w = MediaQuery.of(context).size.width;
    h = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 2, 22, 3),
      body: ListView(
        physics: BouncingScrollPhysics(),
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: w * 0.57,
                child: Padding(
                  padding: const EdgeInsets.only(top: 7, left: 24),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        customtext('Welcome', Colors.white, 20,
                            FontWeight.normal, FontStyle.normal),
                        SizedBox(height: h * 0.005),
                        customtext(
                            'Find and order your fresh fruits & vegetables',
                            Colors.white,
                            13,
                            FontWeight.normal,
                            FontStyle.normal),
                      ]),
                ),
              ),
              SizedBox(height: h * 0.02),
              Container(
                width: w * 1,
                height: h * 0.85,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(20),
                      topLeft: Radius.circular(20)),
                  color: Colors.white,
                ),
                child: Column(
                  children: [
                    SizedBox(
                      height: 70,
                      child: Padding(
                        padding:
                            const EdgeInsets.only(left: 13, right: 13, top: 20),
                        child: TextFormField(
                          decoration: InputDecoration(
                              hintText: "Search fresh fruits & vegetables...",
                              prefixIcon: Icon(Icons.search),
                              border: InputBorder.none,
                              focusedBorder: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                      color:
                                          Color.fromARGB(255, 241, 241, 238)),
                                  borderRadius: BorderRadius.circular(30)),
                              focusedErrorBorder: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                      color:
                                          Color.fromARGB(255, 243, 241, 236)),
                                  borderRadius: BorderRadius.circular(30)),
                              enabledBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                    color: Color.fromARGB(255, 247, 246, 244)),
                                borderRadius: BorderRadius.circular(30),
                              ),
                              filled: true,
                              fillColor: Color.fromARGB(225, 199, 180, 180)),
                        ),
                      ),
                    ),
                    Padding(
                        padding: const EdgeInsets.only(left: 13, top: 20),
                        child: SizedBox(
                            height: 20,
                            child: ListView.builder(
                                scrollDirection: Axis.horizontal,
                                itemCount: text.length,
                                physics: const BouncingScrollPhysics(),
                                itemBuilder: (BuildContext context, int index) {
                                  return Padding(
                                      padding: const EdgeInsets.only(
                                        right: 20,
                                      ),
                                      child: Text(
                                        text[index].toString(),
                                        style: const TextStyle(
                                            color: Colors.black,
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold,
                                            decorationColor: Colors.transparent,
                                            decoration:
                                                TextDecoration.underline),
                                      ));
                                }))),
                    SizedBox(height: h * 0.022),
                    ListView(
                      shrinkWrap: true,
                      physics: BouncingScrollPhysics() 
                        ,
                      children: [
                        SizedBox(
                            height: h * 0.2,
                            child: ListView.builder(
                                scrollDirection: Axis.horizontal,
                                itemCount: vegebles.length,
                                physics: const BouncingScrollPhysics(),
                                itemBuilder: (BuildContext context, int index) {
                                  return Padding(
                                    padding: const EdgeInsets.only(left: 13),
                                    child: Container(
                                      height: h * 0.21,
                                      width: w * 0.30,
                                      decoration: BoxDecoration(
                                          color:
                                              Color.fromARGB(255, 54, 143, 66),
                                          borderRadius:
                                              BorderRadius.circular(18)),
                                      child: Padding(
                                        padding: const EdgeInsets.only(
                                            right: 8, left: 8, top: 10),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 10.5),
                                              child: Container(
                                                height: h * 0.090,
                                                width: w * 0.20,
                                                decoration: BoxDecoration(
                                                    image: DecorationImage(
                                                        image: AssetImage(
                                                            vegebles[index]
                                                                    ['Image']
                                                                .toString())),
                                                    color: Colors.white,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            100)),
                                              ),
                                            ),
                                            SizedBox(height: h * 0.02),
                                            customtext(
                                                vegebles
                                                    .elementAt(index)["title"]
                                                    .toString(),
                                                Colors.black,
                                                15,
                                                FontWeight.bold,
                                                FontStyle.normal),
                                            customtext(
                                                "& 20",
                                                Colors.black,
                                                15,
                                                FontWeight.bold,
                                                FontStyle.normal),
                                            customtext(
                                                "1 kgs",
                                                Colors.black,
                                                12,
                                                FontWeight.normal,
                                                FontStyle.normal)
                                          ],
                                        ),
                                      ),
                                    ),
                                  );
                                })),
                        SizedBox(height: h * 0.014),
                        Center(
                          child: MaterialButton(
                            minWidth: 115,
                            height: 32,
                            onPressed: () {},
                            // ignore: prefer_const_constructors
                            child: Text('See All'),
                            shape: RoundedRectangleBorder(
                                side: const BorderSide(
                                    color: Colors.blue,
                                    width: 1,
                                    style: BorderStyle.solid),
                                borderRadius: BorderRadius.circular(50)),
                          ),
                        ),
                        SizedBox(height: h * 0.022),
                        Padding(
                            padding: const EdgeInsets.only(
                              left: 13,
                            ),
                            child: customtext("Todays Offers", Colors.black, 17,
                                FontWeight.bold, FontStyle.normal)),
                        SizedBox(height: h * 0.014),
                        SizedBox(
                            height: h * 0.13,
                            child: ListView.builder(
                                scrollDirection: Axis.horizontal,
                                itemCount: vegebles.length,
                                physics: const BouncingScrollPhysics(),
                                itemBuilder: (BuildContext context, int index) {
                                  return Padding(
                                    padding: const EdgeInsets.only(left: 13),
                                    child: Column(
                                      children: [
                                        GestureDetector(
                                          onTap: () {
                                            setState(() {
                                              currentindex = index;
                                            });
                                          },
                                          child: Container(
                                            height: h * 0.10,
                                            width: w * 0.22,
                                            decoration: BoxDecoration(
                                                color: currentindex == index
                                                    ? Colors.amber
                                                        .withOpacity(0.4)
                                                    : Colors.transparent,
                                                image: DecorationImage(
                                                    image: AssetImage(
                                                        vegebles[index]['Image']
                                                            .toString())),
                                                borderRadius:
                                                    BorderRadius.circular(20)),
                                          ),
                                        ),
                                        SizedBox(height: h * 0.005),
                                        Row(
                                          children: [
                                            customtext(
                                                vegebles
                                                    .elementAt(index)['title'],
                                                Colors.black,
                                                12,
                                                FontWeight.normal,
                                                FontStyle.normal),
                                            customtext(
                                                "₹ 99",
                                                Colors.black,
                                                12,
                                                FontWeight.normal,
                                                FontStyle.normal)
                                          ],
                                        )
                                      ],
                                    ),
                                  );
                                }))
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
