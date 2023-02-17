import 'package:flutter/material.dart';

class Leave_Rating extends StatefulWidget {
  const Leave_Rating({super.key});

  @override
  State<Leave_Rating> createState() => _Leave_RatingState();
}

class _Leave_RatingState extends State<Leave_Rating> {
  var h, w;
  @override
  Widget build(BuildContext context) {
    h = MediaQuery.of(context).size.height;
    w = MediaQuery.of(context).size.width;
    return Center(
        child: Container(
            width: w * 1,
            height: h * 0.415,
            child: AlertDialog(
              backgroundColor: Colors.transparent,
              content: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: const Color(0xffFFFFFF),
                ),
                height: h * 0.34,
                width: w * 0.93,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: h * 0.022,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 6, right: 6),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "Rating",
                            style: TextStyle(
                                fontSize: 17,
                                color: Color(0xff000000),
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(height: h * 0.007),
                          SizedBox(
                            height: h * 0.03,
                            child: ListView.builder(
                                scrollDirection: Axis.horizontal,
                                itemCount: 5,
                                itemBuilder: (BuildContext context, int index) {
                                  return Padding(
                                    padding: const EdgeInsets.only(right: 5),
                                    child: Icon(
                                      Icons.star,
                                      color: const Color(
                                        0xff59B8BE,
                                      ),
                                      size: h * 0.025,
                                    ),
                                  );
                                }),
                          ),
                          const Text(
                            "Comments",
                            style: TextStyle(
                              fontSize: 17,
                              color: Color(0xff000000),
                            ),
                          ),
                          SizedBox(
                            height: h * 0.006,
                          ),
                          Container(
                            height: h * 0.0925,
                            width: w * 1,
                            decoration: BoxDecoration(
                                border:
                                    Border.all(color: const Color(0xff59B8BE)),
                                borderRadius: BorderRadius.circular(10)),
                            child: const Padding(
                              padding: EdgeInsets.all(6),
                              child: Text(
                                "Massage",
                                style: TextStyle(
                                    fontSize: 17, color: Color(0xffA2A2A2)),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: h * 0.0325,
                    ),
                    Container(
                      height: h * 0.06,
                      decoration: const BoxDecoration(
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(8),
                              bottomRight: Radius.circular(8)),
                          color: Color(0xff59B8BE)),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 8, right: 8),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Text(
                              "Cancel",
                              style: TextStyle(
                                  fontSize: 15, color: Color(0xffFFFFFF)),
                            ),
                            Text(
                              "Rate Now",
                              style: TextStyle(
                                  fontSize: 15, color: Color(0xffFFFFFF)),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )));
  }
}
