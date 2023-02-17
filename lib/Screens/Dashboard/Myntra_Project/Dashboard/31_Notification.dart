import 'package:flutter/material.dart';

class Notificationn extends StatefulWidget {
  const Notificationn({super.key});

  @override
  State<Notificationn> createState() => _NotificationnState();
}

class _NotificationnState extends State<Notificationn> {
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
            "Notification",
            style: TextStyle(color: Color(0xff060219), fontSize: 22),
          ),
        ),
        body: ListView.builder(
            itemCount: 10,
            physics: const BouncingScrollPhysics(),
            itemBuilder: (BuildContext context, int index) {
              return Column(
                children: [
                  SizedBox(height: h * 0.015),
                  Padding(
                    padding: const EdgeInsets.only(left: 13, right: 13),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset("assets/Images/Group 33.png"),
                        SizedBox(width: w * 0.0277),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text("Harry John",
                                style: TextStyle(
                                    fontSize: 15, color: Color(0xff000000))),
                            SizedBox(height: h * 0.0025),
                            const Text(
                                "It is a long established fact that a reader will be\ndistracted by the readable content of a page when\nlooking at its layout.",
                                style: TextStyle(
                                    fontSize: 11, color: Color(0xff818181))),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: h * 0.005),
                  const Divider(
                    color: Color(0xff9E9E9E29),
                  )
                ],
              );
            }));
  }
}
