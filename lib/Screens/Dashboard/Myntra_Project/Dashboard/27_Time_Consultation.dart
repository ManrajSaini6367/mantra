import 'package:flutter/material.dart';

import '10_Astrologers_Profile.dart';
import '26_Book_date.dart';

class Time_Consultation extends StatefulWidget {
  const Time_Consultation({super.key});

  @override
  State<Time_Consultation> createState() => _Time_ConsultationState();
}

class _Time_ConsultationState extends State<Time_Consultation> {
  String language = "English";
  int index = 1;
  int ind = 0;
  var h, w;
  @override
  Widget build(BuildContext context) {
    h = MediaQuery.of(context).size.height;
    w = MediaQuery.of(context).size.width;
    return Container(
        height: h * 0.45,
        child: Column(
          children: [
            SizedBox(height: h * 0.0187),
            Padding(
              padding: const EdgeInsets.only(left: 13, right: 13),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(),
                  const Text(
                    "Time Consultation",
                    style: TextStyle(
                      fontSize: 22,
                      color: Color(0xff060219),
                    ),
                  ),
                  InkWell(
                      onTap: () {
                        Navigator.pop(context);
                        showModalBottomSheet(
                            isDismissible: false,
                            shape: const RoundedRectangleBorder(
                              borderRadius: BorderRadius.only(
                                topRight: Radius.circular(24),
                                topLeft: Radius.circular(24),
                              ),
                            ),
                            context: context,
                            builder: (context) {
                              return const Book_Date();
                            });
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
              padding: const EdgeInsets.only(left: 13, right: 13),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Thu, Jun 23, 2022 16:00 PM (India Standard Time)",
                    style: TextStyle(
                      fontSize: 18,
                      color: Color(0xff000000),
                    ),
                  ),
                  SizedBox(height: h * 0.0125),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "Astrologer Name :",
                            style: TextStyle(
                              fontSize: 16,
                              color: Color(0xff848484),
                            ),
                          ),
                          SizedBox(height: h * 0.02),
                          const Text(
                            "Duration :",
                            style: TextStyle(
                              fontSize: 16,
                              color: Color(0xff848484),
                            ),
                          ),
                          SizedBox(height: h * 0.061),
                          const Text(
                            "Price:",
                            style: TextStyle(
                              fontSize: 16,
                              color: Color(0xff848484),
                            ),
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "Astro Keshav M.",
                            style: TextStyle(
                              fontSize: 19,
                              color: Color(0xff000000),
                            ),
                          ),
                          SizedBox(height: h * 0.02),
                          Row(
                            children: [
                              InkWell(
                                onTap: () {
                                  setState(() {
                                    ind = 0;
                                  });
                                },
                                child: Container(
                                    height: h * 0.022,
                                    width: w * 0.049,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        border: Border.all(
                                            color: const Color(0xff59B8BE))),
                                    child: Center(
                                      child: CircleAvatar(
                                        radius: 5,
                                        backgroundColor: ind == 0
                                            ? const Color(0xff59B8BE)
                                            : const Color(0xffFFFFFF),
                                      ),
                                    )),
                              ),
                              SizedBox(
                                width: w * 0.019,
                              ),
                              const Text(
                                "30 Minute Consultation",
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xff000000),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: h * 0.0125,
                          ),
                          Row(
                            children: [
                              InkWell(
                                onTap: () {
                                  setState(() {
                                    ind = 1;
                                  });
                                },
                                child: Container(
                                    height: h * 0.022,
                                    width: w * 0.049,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        border: Border.all(
                                            color: const Color(0xff59B8BE))),
                                    child: Center(
                                      child: CircleAvatar(
                                        radius: 5,
                                        backgroundColor: ind == 1
                                            ? const Color(0xff59B8BE)
                                            : const Color(0xffFFFFFF),
                                      ),
                                    )),
                              ),
                              SizedBox(
                                width: w * 0.019,
                              ),
                              const Text(
                                "60 Minute Consultation",
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xff000000),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: h * 0.015,
                          ),
                          const Text(
                            "INR 4000.00",
                            style: TextStyle(
                              fontSize: 19,
                              color: Color(0xff59B8BE),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: h * 0.0268),
            const Divider(
              color: Color(0xffD2D2D2),
              height: 1,
            ),
            SizedBox(height: h * 0.021),
            Padding(
              padding: const EdgeInsets.only(left: 13, right: 13),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  MaterialButton(
                    onPressed: () {
                      setState(() {
                        index = 0;
                      });
                      Navigator.pop(context);
                    },
                    shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(6))),
                    height: h * 0.04625,
                    minWidth: w * 0.423,
                    color: index == 0 ? const Color(0xff59B8BE) : const Color(0xffBFBDBD),
                    child: Text(
                      'Cancel',
                      style: TextStyle(
                          fontSize: 16,
                          color: index == 0
                              ? const Color(0xffFFFFFF)
                              : const Color(0xff000000)),
                    ),
                  ),
                  MaterialButton(
                    onPressed: () {
                      Navigator.pop(context);
                      setState(() {
                        index = 1;
                      });
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
                            return const Book_Date();
                          });
                    },
                    shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(6))),
                    height: h * 0.04625,
                    minWidth: w * 0.423,
                    color: index == 1 ? const Color(0xff59B8BE) : const Color(0xffBFBDBD),
                    child: Text(
                      'Confirm',
                      style: TextStyle(
                          fontSize: 16,
                          color: index == 1
                              ? const Color(0xffFFFFFF)
                              : const Color(0xff000000)),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}
