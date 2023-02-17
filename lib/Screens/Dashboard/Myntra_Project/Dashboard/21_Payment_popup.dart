import 'package:flutter/material.dart';

import '22_payment_popup_1.dart';

class Payment_Popup extends StatefulWidget {
  const Payment_Popup({super.key});

  @override
  State<Payment_Popup> createState() => _Payment_PopupState();
}

class _Payment_PopupState extends State<Payment_Popup> {
  var h, w;
  @override
  Widget build(BuildContext context) {
    h = MediaQuery.of(context).size.height;
    w = MediaQuery.of(context).size.width;
    return Container(
      height: h * 0.37,
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
                  "Payment Detail",
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
          SizedBox(height: h * 0.01625),
          Padding(
            padding: const EdgeInsets.only(left: 13, right: 13),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  "Subtotal",
                  style: TextStyle(fontSize: 20, color: Color(0xff060219)),
                ),
                Text(
                  "₹200",
                  style: TextStyle(fontSize: 20, color: Color(0xff060219)),
                ),
              ],
            ),
          ),
          SizedBox(height: h * 0.0175),
          Padding(
            padding: const EdgeInsets.only(left: 13, right: 13),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      "GST @ 18%",
                      style: TextStyle(fontSize: 20, color: Color(0xff060219)),
                    ),
                    Text(
                      "₹36",
                      style: TextStyle(
                          fontSize: 20,
                          color: Color(0xff060219),
                          decoration: TextDecoration.lineThrough),
                    ),
                  ],
                ),
                SizedBox(height: h * 0.0025),
                const Text(
                  "Your first recharge is tax free now!",
                  style: TextStyle(fontSize: 13, color: Color(0xff848484)),
                ),
              ],
            ),
          ),
          SizedBox(height: h * 0.02),
          Padding(
            padding: const EdgeInsets.only(left: 13, right: 13),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  "Total",
                  style: TextStyle(fontSize: 20, color: Color(0xff060219)),
                ),
                Text(
                  "₹200",
                  style: TextStyle(
                    fontSize: 20,
                    color: Color(0xff060219),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: h * 0.01812),
          const Divider(
            color: Color(0xffD2D2D2),
            height: 1,
          ),
          SizedBox(height: h * 0.02687),
          Padding(
            padding: const EdgeInsets.only(left: 13, right: 13),
            child: MaterialButton(
              color: const Color(0xff59B8BE),
              onPressed: () {
                Navigator.pop(context);
                showModalBottomSheet(
                    isDismissible: false,
                    enableDrag: false,
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(24),
                        topLeft: Radius.circular(24),
                      ),
                    ),
                    context: context,
                    builder: (context) {
                      return const Payment_Popup_1();
                    });
              },
              child: const Text(
                "Proceed to Pay",
                style: TextStyle(color: Color(0xffFFFFFF), fontSize: 16),
              ),
              minWidth: w * 1,
              height: h * 0.0625,
              shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10))),
            ),
          ),
        ],
      ),
    );
  }
}
