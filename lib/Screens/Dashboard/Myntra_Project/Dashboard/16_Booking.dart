import 'package:flutter/material.dart';

class Booking extends StatefulWidget {
  const Booking({super.key});

  @override
  State<Booking> createState() => _BookingState();
}

class _BookingState extends State<Booking> {
  var h, w;
  @override
  Widget build(BuildContext context) {
    h = MediaQuery.of(context).size.height;
    w = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Image.asset(
          "assets/Images/1mantra.png",
          height: h * 0.0362,
          width: w * 0.279,
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
            ],
          ),
        ],
        backgroundColor: Colors.white,
        elevation: 5,
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(8, 15, 8, 0),
        child: GridView.builder(
            physics: const BouncingScrollPhysics(),
            itemCount: 6,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, mainAxisExtent: 210, crossAxisSpacing: 7),
            itemBuilder: (BuildContext context, int index) {
              return Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
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
                                          backgroundColor: Color(0xff01DF1F),
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
                            padding: const EdgeInsets.only(left: 8, top: 8),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
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
                                          color: Color(0xff00A8FF)),
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
                                      fontSize: 13, color: Color(0xff484848)),
                                ),
                                const Text(
                                  "Language: Hindi, English",
                                  style: TextStyle(
                                      fontSize: 13, color: Color(0xff484848)),
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
                                ),
                                SizedBox(
                                  height: h * 0.006,
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ));
            }),
      ),
    );
  }
}
