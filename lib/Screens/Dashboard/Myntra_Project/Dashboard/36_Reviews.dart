import 'package:flutter/material.dart';

class Reviews extends StatefulWidget {
  const Reviews({super.key});

  @override
  State<Reviews> createState() => _ReviewsState();
}

class _ReviewsState extends State<Reviews> {
  List lst = [
    "Rohan Sharma",
    "Mohon Sharma",
    "Rajesh Sharma",
    "Deepak Sharma",
    "Raju Sharma",
    "Rohan Sharma",
    "Mohon Sharma",
    "Rajesh Sharma",
    "Deepak Sharma",
    "Raju Sharma",
    "Rohan Sharma",
    "Mohon Sharma",
    "Rajesh Sharma",
    "Deepak Sharma",
    "Raju Sharma",
  ];
  var h, w;
  @override
  Widget build(BuildContext context) {
    h = MediaQuery.of(context).size.height;
    w = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: const Color(0xffFFFFFF),
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Color(0xff060219)),
        elevation: 1,
        backgroundColor: const Color(0xffFFFFFF),
        centerTitle: true,
        title: const Text(
          "Reviews",
          style: TextStyle(color: Color(0xff060219), fontSize: 22),
        ),
      ),
      body: ListView.builder(
          itemCount: lst.length,
          shrinkWrap: true,
          physics: const BouncingScrollPhysics(),
          itemBuilder: (BuildContext context, int index) {
            return Column(
              children: [
                SizedBox(height: h * 0.01),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 13,
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset("assets/Images/1.png"),
                      SizedBox(width: w * 0.044),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            lst.elementAt(index),
                            style: const TextStyle(
                                color: Color(0xff333333), fontSize: 15),
                          ),
                          SizedBox(
                            height: h * 0.00125,
                          ),
                          Row(
                            children: [
                              const Icon(
                                Icons.star,
                                color: Color(0xff59B8BE),
                                size: 12,
                              ),
                              SizedBox(width: w * 0.01385),
                              const Icon(
                                Icons.star,
                                color: Color(0xff59B8BE),
                                size: 12,
                              ),
                              SizedBox(width: w * 0.01385),
                              const Icon(
                                Icons.star,
                                color: Color(0xff59B8BE),
                                size: 12,
                              ),
                              SizedBox(width: w * 0.01385),
                              const Icon(
                                Icons.star,
                                color: Color(0xff59B8BE),
                                size: 12,
                              ),
                              SizedBox(width: w * 0.01385),
                              const Icon(
                                Icons.star,
                                color: Color(0xff59B8BE),
                                size: 12,
                              ),
                            ],
                          ),
                          SizedBox(
                            height: h * 0.01,
                          ),
                          const Text(
                            "Thanks Guru Ji",
                            style: TextStyle(
                                fontSize: 13, color: Color(0xff848484)),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: h * 0.00625,
                ),
                const Divider(
                  color: Color(0xff9E9E9E29),
                )
              ],
            );
          }),
    );
  }
}
