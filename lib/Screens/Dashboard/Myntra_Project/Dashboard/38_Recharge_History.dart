import 'package:flutter/material.dart';

class Recharge_History extends StatefulWidget {
  const Recharge_History({super.key});

  @override
  State<Recharge_History> createState() => _Recharge_HistoryState();
}

class _Recharge_HistoryState extends State<Recharge_History> {
  List lst = [
    {"rupe": "₹200.0", "Status": "Successfully", "Color": Color(0xff128200)},
    {"rupe": "₹150.0", "Status": "Pending", "Color": Color(0xff00A8FF)},
    {"rupe": "₹100.0", "Status": "Failed", "Color": Color(0xffFF0000)}
  ];
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
          "Recharge History",
          style: TextStyle(color: Color(0xff060219), fontSize: 22),
        ),
        actions: [
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
      ),
      body: Column(
        children: [
          SizedBox(
            height: h * 0.02,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 13, right: 13),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Total\nBalance",
                  style: TextStyle(fontSize: 15, color: Color(0xff000000)),
                ),
                Text(
                  "₹10.0",
                  style: TextStyle(fontSize: 20, color: Color(0xff59B8BE)),
                ),
                Container(
                  width: w * 0.00277,
                  color: Color(0xffD6D6D6),
                  height: 45,
                ),
                MaterialButton(
                  onPressed: () {},
                  shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  height: h * 0.05,
                  minWidth: w * 0.4,
                  color: const Color(0xff59B8BE),
                  child: const Text(
                    'Recharge Now',
                    style: TextStyle(fontSize: 16, color: Color(0xffFFFFFF)),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: h * 0.00625,
          ),
          Divider(
            color: Color(0xffD2D2D2),
            height: 1,
          ),
        ],
      ),
    );
  }
}
