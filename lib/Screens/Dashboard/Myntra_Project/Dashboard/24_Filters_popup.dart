import 'package:flutter/material.dart';

class Filters_Popup extends StatefulWidget {
  const Filters_Popup({super.key});

  @override
  State<Filters_Popup> createState() => _Filters_PopupState();
}

class _Filters_PopupState extends State<Filters_Popup> {
  var h, w;
  @override
  Widget build(BuildContext context) {
    h = MediaQuery.of(context).size.height;
    w = MediaQuery.of(context).size.width;
    return Container(
      child: ListView(
        physics: const BouncingScrollPhysics(),
        children: [
          SizedBox(height: h * 0.0187),
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(),
                const Text(
                  "Filters",
                  style: TextStyle(
                    fontSize: 22,
                    color: Color(0xff060219),
                  ),
                ),
                const Icon(Icons.clear)
              ],
            ),
          ),
          SizedBox(height: h * 0.0156),
          const Divider(
            color: Color(0xffD2D2D2),
            height: 1,
          ),
          SizedBox(height: h * 0.0125),
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Language",
                  style: TextStyle(
                    fontSize: 20,
                    color: Color(0xff060219),
                  ),
                ),
                SizedBox(height: h * 0.011),
                GridView.builder(
                    physics: const BouncingScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: 7,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        mainAxisExtent: h * 0.0675,
                        crossAxisCount: 3,
                        mainAxisSpacing: h * 0.02,
                        crossAxisSpacing: w * 0.02216),
                    itemBuilder: (BuildContext context, int index) {
                      return Container(
                        height: h * 0.0675,
                        width: w * 0.3047,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            border: Border.all(color: const Color(0xff555555))),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                              "English",
                              style: TextStyle(
                                  fontSize: 16, color: Color(0xff555555)),
                            ),
                            const Text(
                              "English",
                              style: TextStyle(
                                  fontSize: 16, color: Color(0xff555555)),
                            ),
                          ],
                        ),
                      );
                    }),
                SizedBox(height: h * 0.025),
                const Text(
                  "Speciality",
                  style: TextStyle(
                    fontSize: 20,
                    color: Color(0xff060219),
                  ),
                ),
                SizedBox(height: h * 0.011),
                GridView.builder(
                    physics: const BouncingScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: 5,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        mainAxisExtent: h * 0.0675,
                        crossAxisCount: 3,
                        mainAxisSpacing: h * 0.0175,
                        crossAxisSpacing: w * 0.02216),
                    itemBuilder: (BuildContext context, int index) {
                      return Container(
                        height: h * 0.0675,
                        width: w * 0.3047,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            border: Border.all(color: const Color(0xff555555))),
                        child: const Center(
                          child: Text(
                            "Love",
                            style: TextStyle(
                                fontSize: 16, color: Color(0xff555555)),
                          ),
                        ),
                      );
                    }),
                SizedBox(height: h * 0.025),
                const Text(
                  "Consultation Method",
                  style: TextStyle(
                    fontSize: 20,
                    color: Color(0xff060219),
                  ),
                ),
                SizedBox(height: h * 0.011),
                GridView.builder(
                    physics: const BouncingScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: 5,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        mainAxisExtent: h * 0.0675,
                        crossAxisCount: 3,
                        mainAxisSpacing: h * 0.0175,
                        crossAxisSpacing: w * 0.02216),
                    itemBuilder: (BuildContext context, int index) {
                      return Container(
                        height: h * 0.0675,
                        width: w * 0.3047,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            border: Border.all(color: const Color(0xff555555))),
                        child: const Center(
                          child: Text(
                            "Call",
                            style: TextStyle(
                                fontSize: 16, color: Color(0xff555555)),
                          ),
                        ),
                      );
                    }),
                SizedBox(height: h * 0.025),
                const Text(
                  "Price",
                  style: TextStyle(
                    fontSize: 20,
                    color: Color(0xff060219),
                  ),
                ),
                SizedBox(height: h * 0.015),
                const Text(
                  "₹8~₹99",
                  style: TextStyle(
                    fontSize: 20,
                    color: Color(0xff060219),
                  ),
                ),
                SizedBox(height: h * 0.0087),
                Image.asset(
                  "assets/Images/Group 1250.png",
                  width: w * 1,
                ),
                SizedBox(height: h * 0.0125),
                const Text(
                  "Skill",
                  style: TextStyle(
                    fontSize: 20,
                    color: Color(0xff060219),
                  ),
                ),
                SizedBox(height: h * 0.011),
                GridView.builder(
                    physics: const BouncingScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: 12,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        mainAxisExtent: h * 0.0675,
                        crossAxisCount: 3,
                        mainAxisSpacing: h * 0.02,
                        crossAxisSpacing: w * 0.02216),
                    itemBuilder: (BuildContext context, int index) {
                      return Container(
                        height: h * 0.0675,
                        width: w * 0.3047,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            border: Border.all(color: const Color(0xff555555))),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                              "Vedic",
                              style: TextStyle(
                                  fontSize: 16, color: Color(0xff555555)),
                            ),
                            const Text(
                              "astrology",
                              style: TextStyle(
                                  fontSize: 16, color: Color(0xff555555)),
                            ),
                          ],
                        ),
                      );
                    }),
                SizedBox(height: h * 0.0275),
                const Text(
                  "Segment",
                  style: TextStyle(
                    fontSize: 20,
                    color: Color(0xff060219),
                  ),
                ),
                SizedBox(height: h * 0.011),
                GridView.builder(
                    physics: const BouncingScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: 5,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        mainAxisExtent: h * 0.0675,
                        crossAxisCount: 3,
                        mainAxisSpacing: h * 0.0175,
                        crossAxisSpacing: w * 0.02216),
                    itemBuilder: (BuildContext context, int index) {
                      return Container(
                        height: h * 0.0675,
                        width: w * 0.3047,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            border: Border.all(color: const Color(0xff555555))),
                        child: const Center(
                          child: Text(
                            "A",
                            style: TextStyle(
                                fontSize: 16, color: Color(0xff555555)),
                          ),
                        ),
                      );
                    }),
              ],
            ),
          ),
          SizedBox(height: h * 0.0275),
          const Divider(
            color: Color(0xffD2D2D2),
            height: 1,
          ),
          SizedBox(height: h * 0.012),
          Padding(
            padding: const EdgeInsets.only(left: 13, right: 13),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                MaterialButton(
                  onPressed: () {
                    setState(() {});
                    Navigator.pop(context);
                  },
                  shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  height: h * 0.05375,
                  minWidth: w * 0.45,
                  child: const Text(
                    'Clear All',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        color: Color(0xff000000)),
                  ),
                ),
                MaterialButton(
                  onPressed: () {
                    Navigator.pop(context);
                    setState(() {});
                  },
                  shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  height: h * 0.05375,
                  minWidth: w * 0.45,
                  color: const Color(0xff59B8BE),
                  child: const Text(
                    'Apply',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        color: Color(0xffFFFFFF)),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: h * 0.0125),
        ],
      ),
    );
  }
}
