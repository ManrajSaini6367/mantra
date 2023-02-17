import 'package:flutter/material.dart';

import '19_Request_accept.dart';

class Request_Waiting extends StatefulWidget {
  const Request_Waiting({super.key});

  @override
  State<Request_Waiting> createState() => _Request_WaitingState();
}

class _Request_WaitingState extends State<Request_Waiting> {
  var h, w;
  @override
  Widget build(BuildContext context) {
    h = MediaQuery.of(context).size.height;
    w = MediaQuery.of(context).size.width;
    return InkWell(
      onTap: (() {
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
              return const Request_Accept();
            });
      }),
      child: Container(
        height: h * 0.151,
        width: w * 1,
        child: Padding(
          padding: const EdgeInsets.only(left: 13, right: 13, top: 30),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CircleAvatar(
                    radius: 32,
                    backgroundColor: const Color(0xff59B8BE),
                    child: Image.asset("assets/Images/employee-6.png"),
                  ),
                  SizedBox(width: w * 0.038),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Astro Keshav M.",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Color(0xff060219)),
                      ),
                      RichText(
                        text: const TextSpan(
                          text: "₹ 7/min",
                          style:
                              TextStyle(fontSize: 13, color: Color(0xff060219)),
                          children: [
                            TextSpan(
                              text: " (CHAT)",
                              style: TextStyle(
                                  fontSize: 13, color: Color(0xff00A8FF)),
                            )
                          ],
                        ),
                      ),
                      const Text(
                        "Chat Initiated. Consultant\ngets 3 mins to accept",
                        style:
                            TextStyle(fontSize: 12, color: Color(0xff060219)),
                      ),
                    ],
                  )
                ],
              ),
              MaterialButton(
                onPressed: () {},
                shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                height: h * 0.035,
                minWidth: w * 0.277,
                color: const Color(0xff59B8BE),
                child: const Text(
                  'Waiting',
                  style: TextStyle(fontSize: 14, color: Color(0xffFFFFFF)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
