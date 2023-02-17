import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Offer_Cashback extends StatefulWidget {
  const Offer_Cashback({super.key});

  @override
  State<Offer_Cashback> createState() => _Offer_CashbackState();
}

class _Offer_CashbackState extends State<Offer_Cashback> {
  TextEditingController tabbar1 = TextEditingController();
  var h, w;
  @override
  Widget build(BuildContext context) {
    h = MediaQuery.of(context).size.height;
    w = MediaQuery.of(context).size.width;
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          leading: const Padding(
            padding: EdgeInsets.only(right: 19),
            child: Icon(
              Icons.arrow_back,
              color: Colors.black,
            ),
          ),
          elevation: 1,
          centerTitle: true,
          title:const Text(
            'Offer & Cashback',
            style: TextStyle(fontSize: 22, color: Color(0xff060219)),
          ),
          backgroundColor: Colors.white,
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 13, right: 13),
              child: Container(
                height: h * 0.053,
                width: w * 1,
                decoration: const BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      color: Color(0xff333333),
                      width: 1,
                    ),
                  ),
                ),
                child: const DefaultTabController(
                  length: 3,
                  child: TabBar(
                    indicatorWeight: 4,
                    indicatorColor: Color(0xff59B8BE),
                    tabs: [
                      Tab(
                          child: Text(
                        "Tab 1",
                        style: TextStyle(fontSize: 18, color: Colors.black),
                      )),
                      Tab(
                          child: Text(
                        "Tab 2",
                        style: TextStyle(fontSize: 18, color: Colors.black),
                      )),
                      Tab(
                          child: Text(
                        "Tab 3",
                        style: TextStyle(fontSize: 18, color: Colors.black),
                      )),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: h * 0.025,
            ),
           const Padding(
              padding: EdgeInsets.only(
                left: 13,
                right: 13,
              ),
              child: Text(
                "Astrology can be defined in many ways but we would want to explain this as science which helps people in guiding them through their good/bad times of life and this is done based on various & different planetary positions and calculations through the …",
                style: TextStyle(fontSize: 15, color: Color(0xff333333)),
              ),
            ),
            const Padding(
              padding:  EdgeInsets.only(
                left: 13,
                right: 13,
              ),
              child: Align(
                alignment: Alignment.centerRight,
                child: Text(
                  "See More",
                  style: TextStyle(
                      color: Color(0xff59B8BE),
                      fontSize: 15,
                      decoration: TextDecoration.underline),
                ),
              ),
            ),
            SizedBox(height: h * 0.02),
            Padding(
              padding: const EdgeInsets.only(
                left: 8,
                right: 8,
              ),
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Container(
                  width: w * 1,
                  height: h * 0.465,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Stack(
                        children: [
                          Image.asset(
                            "assets/Images/Group 1626@2x.png",
                            width: w * 1,
                            height: h * 0.2,
                            fit: BoxFit.fill,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 230, top: 1),
                            child: Image.asset(
                              "assets/Images/ddd-removebg-preview@2x.png",
                              height: h * 0.196,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: h * 0.028,
                      ),
                    const  Text(
                        "Personal Life",
                        style:
                            TextStyle(fontSize: 18, color: Color(0xff59B8BE)),
                      ),
                      SizedBox(
                        height: h * 0.0085,
                      ),
                     const Text(
                        "Astrology can be defined in many ways but we would want to explain this as science which helps people in guiding them through their good/bad times of life and this is done based on various & different planetary positions and calculations.",
                        style:
                            TextStyle(fontSize: 16, color: Color(0xff333333)),
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ));
  }
}
