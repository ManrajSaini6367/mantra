import 'package:flutter/material.dart';

import '29_Chat_Intake.dart';

class Offer_Popup extends StatefulWidget {
  const Offer_Popup({super.key});

  @override
  State<Offer_Popup> createState() => _Offer_PopupState();
}

class _Offer_PopupState extends State<Offer_Popup> {
  int index = 0;
  int ind = 0;
  var h, w;
  @override
  Widget build(BuildContext context) {
    h = MediaQuery.of(context).size.height;
    w = MediaQuery.of(context).size.width;
    return Container(
      height: h * 0.38,
      child: Column(
        children: [
          SizedBox(height: h * 0.0187),
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(),
                const Text(
                  "Book a long session at discount!",
                  style: TextStyle(
                    fontSize: 20,
                    color: Color(0xff060219),
                  ),
                ),
                InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: const Icon(Icons.clear))
              ],
            ),
          ),
          SizedBox(height: h * 0.0156),
          const Divider(
            color: Color(0xffD2D2D2),
            height: 1,
          ),
          SizedBox(height: h * 0.02312),
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 10),
            child: InkWell(
              onTap: () {
                setState(() {
                  index = 0;
                });
              },
              child: Container(
                width: w * 1,
                height: h * 0.08,
                decoration: BoxDecoration(
                    border: Border.all(color: const Color(0xff59B8BE)),
                    borderRadius: BorderRadius.circular(10)),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(13, 9, 10, 6),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "15% off",
                            style: TextStyle(
                                fontSize: 19,
                                fontWeight: FontWeight.bold,
                                color: Color(0xff000000)),
                          ),
                          SizedBox(height: h * 0.003),
                          RichText(
                            text: const TextSpan(
                              text: "15 min session @",
                              style: TextStyle(
                                  fontSize: 19, color: Color(0xff000000)),
                              children: <TextSpan>[
                                TextSpan(
                                  text: " ₹ 699.0 ",
                                  style: TextStyle(
                                      fontSize: 19,
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xff000000)),
                                ),
                                TextSpan(
                                  text: "₹ 999",
                                  style: TextStyle(
                                      fontSize: 19,
                                      color: Color(0xff000000),
                                      decoration: TextDecoration.lineThrough),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Container(
                        height: h * 0.035,
                        width: w * 0.077,
                        decoration: BoxDecoration(
                            border: Border.all(color: const Color(0xff59B8BE)),
                            borderRadius: BorderRadius.circular(20)),
                        child: Center(
                          child: CircleAvatar(
                            backgroundColor: index == 0
                                ? const Color(0xff59B8BE)
                                : Colors.transparent,
                            radius: h * 0.011,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: h * 0.0156),
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 10),
            child: InkWell(
              onTap: () {
                setState(() {
                  index = 1;
                });
              },
              child: Container(
                height: h * 0.17,
                decoration: BoxDecoration(
                    border: Border.all(color: const Color(0xff59B8BE)),
                    borderRadius: BorderRadius.circular(10)),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(13, 9, 10, 15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                "30% off",
                                style: TextStyle(
                                    fontSize: 19,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xff000000)),
                              ),
                              SizedBox(height: h * 0.003),
                              RichText(
                                text: const TextSpan(
                                  text: "30 min session @",
                                  style: TextStyle(
                                      fontSize: 19, color: Color(0xff000000)),
                                  children: <TextSpan>[
                                    TextSpan(
                                      text: " ₹ 699.0 ",
                                      style: TextStyle(
                                          fontSize: 19,
                                          fontWeight: FontWeight.bold,
                                          color: Color(0xff000000)),
                                    ),
                                    TextSpan(
                                      text: "₹ 999",
                                      style: TextStyle(
                                          fontSize: 19,
                                          color: Color(0xff000000),
                                          decoration:
                                              TextDecoration.lineThrough),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          Container(
                            height: h * 0.035,
                            width: w * 0.077,
                            decoration: BoxDecoration(
                                border: Border.all(color: const Color(0xff59B8BE)),
                                borderRadius: BorderRadius.circular(20)),
                            child: Center(
                              child: CircleAvatar(
                                backgroundColor: index == 1
                                    ? const Color(0xff59B8BE)
                                    : Colors.transparent,
                                radius: h * 0.011,
                              ),
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: h * 0.0125,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          MaterialButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: ((context) => const Chat_Intake())));
                            },
                            height: h * 0.065,
                            minWidth: w * 0.4,
                            color: const Color(0xff59B8BE),
                            shape: const RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(6))),
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    const Icon(
                                      Icons.chat_sharp,
                                      color: Color(0xffFFFFFF),
                                    ),
                                    const Text(
                                      "Chat",
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold,
                                          color: Color(0xffFFFFFF)),
                                    ),
                                  ],
                                ),
                                const Text(
                                  "Wait-time - 5m",
                                  style: TextStyle(
                                      fontSize: 14, color: Color(0xffFFFFFF)),
                                )
                              ],
                            ),
                          ),
                          MaterialButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: ((context) => const Chat_Intake())));
                            },
                            height: h * 0.065,
                            minWidth: w * 0.4,
                            color: const Color(0xffBFBDBD),
                            shape: const RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(6))),
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    const Icon(
                                      Icons.call,
                                      color: Color(0xff000000),
                                    ),
                                    const Text(
                                      "Call",
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold,
                                          color: Color(0xff000000)),
                                    ),
                                  ],
                                ),
                                const Text(
                                  "Currently Offline",
                                  style: TextStyle(
                                      fontSize: 14, color: Color(0xff000000)),
                                )
                              ],
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
