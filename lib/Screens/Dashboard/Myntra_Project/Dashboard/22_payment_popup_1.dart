import 'package:flutter/material.dart';

class Payment_Popup_1 extends StatefulWidget {
  const Payment_Popup_1({super.key});

  @override
  State<Payment_Popup_1> createState() => _Payment_Popup_1State();
}

class _Payment_Popup_1State extends State<Payment_Popup_1> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(milliseconds: 2500), () {
      Navigator.pop(context);
    });
  }

  var h, w;
  @override
  Widget build(BuildContext context) {
    h = MediaQuery.of(context).size.height;
    w = MediaQuery.of(context).size.width;
    return Container(
      height: h * 0.32,
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
                  "Payment Sucessfull",
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
          SizedBox(height: h * 0.025),
          Image.asset("assets/Images/OBJECTS.png")
        ],
      ),
    );
  }
}
