import 'package:flutter/material.dart';

class Book_Date extends StatefulWidget {
  const Book_Date({super.key});

  @override
  State<Book_Date> createState() => _Book_DateState();
}

class _Book_DateState extends State<Book_Date> {
  int current = 0;
  int ind = 0;
  int currentindex = 0;
  int currentind = 0;
  var h, w;
  @override
  Widget build(BuildContext context) {
    h = MediaQuery.of(context).size.height;
    w = MediaQuery.of(context).size.width;
    return Container(
        height: h * 0.5875,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: h * 0.0187),
            Padding(
              padding: const EdgeInsets.only(left: 13, right: 13),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(),
                  const Text(
                    "Time Schedule",
                    style: TextStyle(
                      fontSize: 22,
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
            Container(
              height: h * 0.053,
              width: w * 1,
              decoration: const BoxDecoration(color: Color(0xffF2F2F2)),
              child: const Padding(
                padding: EdgeInsets.only(left: 13, right: 13),
                child: DefaultTabController(
                  length: 3,
                  child: TabBar(
                    indicatorWeight: 1,
                    labelColor: Color(0xff59B8BE),
                    unselectedLabelColor: Colors.black,
                    indicatorColor: Color(0xff59B8BE),
                    tabs: [
                      Tab(
                          child: Text(
                        "Fri, Feb 10",
                        style: TextStyle(
                          fontSize: 12,
                        ),
                      )),
                      Tab(
                          child: Text(
                        "Sat, Feb 11",
                        style: TextStyle(
                          fontSize: 12,
                        ),
                      )),
                      Tab(
                          child: Text(
                        "Suy, Feb 12",
                        style: TextStyle(
                          fontSize: 12,
                        ),
                      )),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: h * 0.0206,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 13),
              child: Text(
                "Morning",
                style: TextStyle(
                  fontSize: 16,
                  color: Color(0xff060219),
                ),
              ),
            ),
            SizedBox(
              height: h * 0.01625,
            ),
            SizedBox(
              height: h * 0.051,
              child: ListView.builder(
                  padding: const EdgeInsets.only(left: 11, right: 11),
                  itemCount: 3,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                      padding: const EdgeInsets.only(left: 2, right: 2),
                      child: MaterialButton(
                        onPressed: () {
                          setState(() {
                            current = index;
                          });
                        },
                        shape: RoundedRectangleBorder(
                            side: BorderSide(
                                color: current == index
                                    ? Colors.transparent
                                    : const Color(0xff555555)),
                            borderRadius: BorderRadius.circular(8)),
                        height: h * 0.051,
                        minWidth: w * 0.3,
                        color: current == index
                            ? const Color(0xff59B8BE)
                            : const Color(0xffFFFFFF),
                        child: Text(
                          "8:00 AM",
                          style: TextStyle(
                            fontSize: 16,
                            color: current == index
                                ? const Color(0xffFFFFFF)
                                : const Color(0xff000000),
                          ),
                        ),
                      ),
                    );
                  }),
            ),
            SizedBox(
              height: h * 0.02,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 13),
              child: Text(
                "Afternoon",
                style: TextStyle(
                  fontSize: 16,
                  color: Color(0xff060219),
                ),
              ),
            ),
            SizedBox(
              height: h * 0.01625,
            ),
            GridView.builder(
              physics: const BouncingScrollPhysics(),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  mainAxisExtent: h * 0.051,
                  mainAxisSpacing: h * 0.0125),
              itemCount: 5,
              shrinkWrap: true,
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: const EdgeInsets.only(left: 13, right: 13),
                  child: MaterialButton(
                    onPressed: () {
                      setState(() {
                        ind = index;
                      });
                    },
                    shape: RoundedRectangleBorder(
                        side: BorderSide(
                            color: ind == index
                                ? Colors.transparent
                                : const Color(0xff555555)),
                        borderRadius: BorderRadius.circular(8)),
                    height: h * 0.051,
                    minWidth: w * 0.3,
                    color: ind == index ? const Color(0xff59B8BE) : const Color(0xffFFFFFF),
                    child: Text(
                      "1:00 PM",
                      style: TextStyle(
                        fontSize: 16,
                        color: ind == index
                            ? const Color(0xffFFFFFF)
                            : const Color(0xff000000),
                      ),
                    ),
                  ),
                );
              },
            ),
            SizedBox(
              height: h * 0.02,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 13),
              child: Text(
                "Evening",
                style: TextStyle(
                  fontSize: 16,
                  color: Color(0xff060219),
                ),
              ),
            ),
            SizedBox(
              height: h * 0.01625,
            ),
            SizedBox(
              height: h * 0.051,
              child: ListView.builder(
                  padding: const EdgeInsets.only(left: 11, right: 11),
                  itemCount: 3,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                      padding: const EdgeInsets.only(left: 2, right: 2),
                      child: MaterialButton(
                        onPressed: () {
                          setState(() {
                            currentindex = index;
                          });
                        },
                        shape: RoundedRectangleBorder(
                            side: BorderSide(
                                color: currentindex == index
                                    ? Colors.transparent
                                    : const Color(0xff555555)),
                            borderRadius: BorderRadius.circular(8)),
                        height: h * 0.051,
                        minWidth: w * 0.3,
                        color: currentindex == index
                            ? const Color(0xff59B8BE)
                            : const Color(0xffFFFFFF),
                        child: Text(
                          "5:00 PM",
                          style: TextStyle(
                            fontSize: 16,
                            color: currentindex == index
                                ? const Color(0xffFFFFFF)
                                : const Color(0xff000000),
                          ),
                        ),
                      ),
                    );
                  }),
            ),
          ],
        ));
  }
}
