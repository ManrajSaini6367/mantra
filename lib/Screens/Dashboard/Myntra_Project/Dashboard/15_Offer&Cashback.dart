import 'package:flutter/material.dart';

class Offer__Cashback extends StatefulWidget {
  const Offer__Cashback({super.key});

  @override
  State<Offer__Cashback> createState() => _Offer__CashbackState();
}

class _Offer__CashbackState extends State<Offer__Cashback> {
  var h, w;
  @override
  Widget build(BuildContext context) {
    h = MediaQuery.of(context).size.height;
    w = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Color(0xff060219)),
        elevation: 1,
        centerTitle: true,
        title: const Text(
          'Offer & Cashback',
          style: TextStyle(fontSize: 22, color: Color(0xff060219)),
        ),
        backgroundColor: const Color(0xffD3F0F2),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: w * 1,
            height: h * 0.6,
            decoration: const BoxDecoration(
                color: Color(0xffD3F0F2),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                )),
            child: Padding(
              padding: const EdgeInsets.only(left: 13, right: 13),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Stack(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 40),
                        child: Container(
                          height: h * 0.15,
                          width: w * 1,
                          decoration: BoxDecoration(
                              color: const Color(0xff59B8BE),
                              borderRadius: BorderRadius.circular(10)),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 12, top: 9),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  "Buy 1mantra Plus",
                                  style: TextStyle(
                                      fontSize: 18, color: Colors.white),
                                ),
                                const Text(
                                  "Get upto 10-20% cashback\non every order",
                                  style: TextStyle(
                                      fontSize: 14, color: Colors.white),
                                ),
                                SizedBox(
                                  height: h * 0.01,
                                ),
                                Container(
                                  height: h * 0.03,
                                  width: w * 0.23,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(20)),
                                  child: const Center(
                                    child: Text(
                                      "Join Now",
                                      style: TextStyle(
                                          fontSize: 13, color: Colors.black),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 220, top: 14),
                        child: Image.asset(
                          "assets/Images/offer.png",
                          height: h * 0.19,
                          width: w * 0.2872,
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: h * 0.02,
                  ),
                  Row(
                    children: [
                      const CircleAvatar(
                        backgroundColor: Color(0xff59B8BE),
                        radius: 12.5,
                        child:
                            Icon(Icons.wallet, size: 20, color: Colors.white),
                      ),
                      SizedBox(
                        width: w * 0.017,
                      ),
                      const Text(
                        "Membership Saving Plan",
                        style: TextStyle(fontSize: 18, color: Colors.black),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: h * 0.015,
                  ),
                  const Text(
                    "Talk More, Save More!",
                    style: TextStyle(fontSize: 17, color: Colors.black),
                  ),
                  SizedBox(
                    height: h * 0.006,
                  ),
                  const Text(
                    "Note: Save 10% on each & every order How subscription plan help you to save money?",
                    style: TextStyle(fontSize: 15, color: Colors.black),
                  ),
                  SizedBox(
                    height: h * 0.004,
                  ),
                  const Text(
                    "Normal Price : ₹1,000/hr\nDiscount Price : ₹900/hr",
                    style: TextStyle(fontSize: 15, color: Colors.black),
                  ),
                  SizedBox(
                    height: h * 0.004,
                  ),
                  const Text(
                    "Normal Consultation frequency:\nIf you spent ₹1000 average in week you can save flat ₹400 in month",
                    style: TextStyle(fontSize: 15, color: Colors.black),
                  ),
                  SizedBox(
                    height: h * 0.04,
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: MaterialButton(
                      color: const Color(0xff59B8BE),
                      onPressed: () {},
                      // ignore: sort_child_properties_last
                      child: const Text(
                        "Buy Budget Plan",
                        style:
                            TextStyle(color: Color(0xffFFFFFF), fontSize: 18),
                      ),
                      minWidth: w * 0.478,
                      height: h * 0.056,
                      shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10))),
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
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Earn by Completing Profile",
                  style: TextStyle(fontSize: 18, color: Colors.black),
                ),
                SizedBox(
                  height: h * 0.015,
                ),
                Container(
                  width: w * 1,
                  height: h * 0.123,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                        color: const Color(0xff59B8BE),
                        width: 1,
                      )),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 11, right: 14, top: 8),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Get ₹10 by completing your profile",
                          style: TextStyle(fontSize: 16, color: Colors.black),
                        ),
                        SizedBox(
                          height: h * 0.0125,
                        ),
                        Align(
                          alignment: Alignment.centerRight,
                          child: MaterialButton(
                            color: const Color(0xff59B8BE),
                            onPressed: () {},
                            // ignore: sort_child_properties_last
                            child: const Text(
                              "Complete your profile",
                              style: TextStyle(
                                  color: Color(0xffFFFFFF), fontSize: 18),
                            ),
                            minWidth: w * 0.554,
                            height: h * 0.055,
                            shape: const RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10))),
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
