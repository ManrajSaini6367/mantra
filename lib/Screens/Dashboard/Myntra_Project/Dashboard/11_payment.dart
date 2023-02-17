import 'package:flutter/material.dart';

import '21_Payment_popup.dart';

class Payment extends StatefulWidget {
  const Payment({super.key});

  @override
  State<Payment> createState() => _PaymentState();
}

class _PaymentState extends State<Payment> {
  int current = 0;
  int index = 0;
  bool chek = false;
  var h, w;
  @override
  Widget build(BuildContext context) {
    h = MediaQuery.of(context).size.height;
    w = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: const Color(0xffFFFFFF),
      appBar: AppBar(
          iconTheme: const IconThemeData(color: Color(0xff060219)),
        backgroundColor: const Color(0xffFFFFFF),
        centerTitle: true,
        elevation: 1,
        title: RichText(
          text: const TextSpan(
            text: "Wallet Balance:",
            style: TextStyle(fontSize: 22, color: Color(0xff060219)),
            children: [
              TextSpan(
                text: " ₹90",
                style: TextStyle(fontSize: 22, color: Color(0xff59B8BEF)),
              )
            ],
          ),
        ),
      ),
      body: ListView(
        physics: const BouncingScrollPhysics(),
        children: [
          Container(
            width: w * 1,
            height: h * 0.479,
            decoration: const BoxDecoration(color: Colors.white, boxShadow: [
              BoxShadow(color: Color(0xff848484), blurRadius: 4)
            ]),
            child: Padding(
              padding: const EdgeInsets.only(
                  left: 13, right: 13, top: 20, bottom: 20),
              child: GridView.builder(
                  physics: const BouncingScrollPhysics(),
                  itemCount: 8,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      mainAxisSpacing: h * 0.01875,
                      crossAxisSpacing: w * 0.033),
                  itemBuilder: (BuildContext context, int index) {
                    return InkWell(
                      onTap: () {
                        setState(() {
                          current = index;
                        });
                      },
                      child: Container(
                          height: h * 0.118,
                          width: w * 0.296,
                          decoration: BoxDecoration(
                              color: current == index
                                  ? const Color(0xff59B8BE)
                                  : const Color(0xffF0FBFC),
                              borderRadius: BorderRadius.circular(6)),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "₹1",
                                style: TextStyle(
                                    fontSize: 22,
                                    color: current == index
                                        ? const Color(0xffFFFFFF)
                                        : const Color(0xff000000)),
                              ),
                              Text(
                                "Get ₹100",
                                style: TextStyle(
                                    fontSize: 18,
                                    color: current == index
                                        ? const Color(0xffFFFFFF)
                                        : const Color(0xff000000)),
                              ),
                            ],
                          )),
                    );
                  }),
            ),
          ),
          SizedBox(
            height: h * 0.02,
          ),
          Container(
            width: w * 1,
            height: h * 0.1075,
            decoration: const BoxDecoration(color: Colors.white, boxShadow: [
              BoxShadow(color: Color(0xff848484), blurRadius: 4)
            ]),
            child: Padding(
              padding: const EdgeInsets.only(right: 13, left: 13),
              child: Column(
                children: [
                  SizedBox(
                    height: h * 0.01375,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Image.asset(
                            "assets/Images/coupon.png",
                            height: h * 0.02025,
                            width: w * 0.052,
                          ),
                          SizedBox(
                            width: w * 0.033,
                          ),
                          const Text(
                            "Coupon",
                            style: TextStyle(
                                fontSize: 17, color: Color(0xff000000)),
                          )
                        ],
                      ),
                      const Icon(Icons.keyboard_arrow_right_rounded)
                    ],
                  ),
                  SizedBox(
                    height: h * 0.01125,
                  ),
                  Container(
                    width: w * 1,
                    height: h * 0.03625,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(6),
                        border: Border.all(
                          color: const Color(0xffE1E1E1),
                        )),
                    child: const Padding(
                      padding: EdgeInsets.only(top: 6, left: 6),
                      child: Text(
                        "Please enter a valid code",
                        style:
                            TextStyle(fontSize: 13, color: Color(0xff848484)),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            height: h * 0.02,
          ),
          Container(
            width: w * 1,
            height: h * 0.128,
            decoration: const BoxDecoration(color: Colors.white, boxShadow: [
              BoxShadow(color: Color(0xff848484), blurRadius: 4)
            ]),
            child: Padding(
              padding: const EdgeInsets.only(right: 13, left: 13),
              child: Column(
                children: [
                  SizedBox(
                    height: h * 0.01575,
                  ),
                  Row(
                    children: [
                      Image.asset(
                        "assets/Images/rupee(1).png",
                        height: h * 0.02375,
                        width: w * 0.052,
                      ),
                      SizedBox(
                        width: w * 0.033,
                      ),
                      const Text(
                        "Amount",
                        style:
                            TextStyle(fontSize: 17, color: Color(0xff000000)),
                      )
                    ],
                  ),
                  SizedBox(
                    height: h * 0.0155,
                  ),
                  Container(
                    width: w * 1,
                    height: h * 0.05,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(6),
                        border: Border.all(
                          color: const Color(0xffE1E1E1),
                        )),
                    child: const Padding(
                      padding: EdgeInsets.only(top: 11, left: 6),
                      child: Text(
                        "Enter amount",
                        style:
                            TextStyle(fontSize: 13, color: Color(0xff848484)),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            height: h * 0.02,
          ),
          Container(
              width: w * 1,
              height: h * 0.5,
              decoration: const BoxDecoration(color: Colors.white, boxShadow: [
                BoxShadow(color: Color(0xff848484), blurRadius: 4)
              ]),
              child: Padding(
                padding: const EdgeInsets.only(left: 13, right: 13),
                child: Column(
                  children: [
                    SizedBox(
                      height: h * 0.0125,
                    ),
                    InkWell(
                      onTap: () {
                        setState(() {
                          index = 0;
                        });
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Image.asset(
                                "assets/Images/Group 1632.png",
                                width: w * 0.074,
                                height: h * 0.04875,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text(
                                    "UPI",
                                    style: TextStyle(
                                        fontSize: 18, color: Color(0xff848484)),
                                  ),
                                  SizedBox(
                                    height: h * 0.00375,
                                  ),
                                  Row(
                                    children: [
                                      Image.asset(
                                          "assets/Images/google-pay.png"),
                                      SizedBox(
                                        width: w * 0.0277,
                                      ),
                                      Image.asset(
                                          "assets/Images/phonepe-logo.png"),
                                      SizedBox(
                                        width: w * 0.0277,
                                      ),
                                      Image.asset("assets/Images/upi-icon.png"),
                                      SizedBox(
                                        width: w * 0.0277,
                                      ),
                                      Image.asset("assets/Images/WhatsApp.png"),
                                    ],
                                  )
                                ],
                              ),
                            ],
                          ),
                          Container(
                            height: h * 0.02,
                            width: w * 0.044,
                            decoration: BoxDecoration(
                                color: index == 0
                                    ? const Color(0xff59B8BE)
                                    : Colors.transparent,
                                borderRadius: BorderRadius.circular(20),
                                border: Border.all(
                                  color: const Color(0xff59B8BE),
                                )),
                            child: const Icon(
                              Icons.check,
                              size: 12,
                              color: Color(0xffFFFFFF),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: h * 0.02,
                    ),
                    const Divider(
                      color: Color(0xffE9E9E9),
                    ),
                    SizedBox(
                      height: h * 0.00125,
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          index = 1;
                        });
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Image.asset(
                                "assets/Images/Group 1633.png",
                                width: w * 0.074,
                                height: h * 0.04875,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text(
                                    "Paytm Wallet",
                                    style: TextStyle(
                                        fontSize: 18, color: Color(0xff848484)),
                                  ),
                                  SizedBox(
                                    height: h * 0.00375,
                                  ),
                                  Image.asset("assets/Images/paytm-size.png")
                                ],
                              ),
                            ],
                          ),
                          Container(
                            height: h * 0.02,
                            width: w * 0.044,
                            decoration: BoxDecoration(
                                color: index == 1
                                    ? const Color(0xff59B8BE)
                                    : Colors.transparent,
                                borderRadius: BorderRadius.circular(20),
                                border: Border.all(
                                  color: const Color(0xff59B8BE),
                                )),
                            child: const Icon(
                              Icons.check,
                              size: 12,
                              color: Color(0xffFFFFFF),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: h * 0.02,
                    ),
                    const Divider(
                      color: Color(0xffE9E9E9),
                    ),
                    SizedBox(
                      height: h * 0.00125,
                    ),
                    InkWell(
                      onTap: () {
                        setState(() {
                          index = 2;
                        });
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Image.asset(
                                "assets/Images/Group 1634.png",
                                width: w * 0.074,
                                height: h * 0.04875,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text(
                                    "Credit/Debit Card",
                                    style: TextStyle(
                                        fontSize: 18, color: Color(0xff848484)),
                                  ),
                                  SizedBox(
                                    height: h * 0.00375,
                                  ),
                                  Row(
                                    children: [
                                      Image.asset(
                                        "assets/Images/visa.png",
                                        height: h * 0.015,
                                      ),
                                      SizedBox(
                                        width: w * 0.0277,
                                      ),
                                      Image.asset(
                                        "assets/Images/rupay@2x.png",
                                        height: h * 0.02,
                                      ),
                                      SizedBox(
                                        width: w * 0.0277,
                                      ),
                                      Image.asset(
                                        "assets/Images/mastercard.png",
                                        height: h * 0.02,
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ],
                          ),
                          Container(
                            height: h * 0.02,
                            width: w * 0.044,
                            decoration: BoxDecoration(
                                color: index == 2
                                    ? const Color(0xff59B8BE)
                                    : Colors.transparent,
                                borderRadius: BorderRadius.circular(20),
                                border: Border.all(
                                  color: const Color(0xff59B8BE),
                                )),
                            child: const Icon(
                              Icons.check,
                              size: 12,
                              color: Color(0xffFFFFFF),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: h * 0.02,
                    ),
                    const Divider(
                      color: Color(0xffE9E9E9),
                    ),
                    SizedBox(
                      height: h * 0.00125,
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          index = 3;
                        });
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Image.asset(
                                "assets/Images/Group 1635.png",
                                width: w * 0.074,
                                height: h * 0.04875,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text(
                                    "Paytm Postpaid",
                                    style: TextStyle(
                                        fontSize: 18, color: Color(0xff848484)),
                                  ),
                                  SizedBox(
                                    height: h * 0.00375,
                                  ),
                                  Image.asset("assets/Images/paytmpostpaid.png")
                                ],
                              ),
                            ],
                          ),
                          Container(
                            height: h * 0.02,
                            width: w * 0.044,
                            decoration: BoxDecoration(
                                color: index == 3
                                    ? const Color(0xff59B8BE)
                                    : Colors.transparent,
                                borderRadius: BorderRadius.circular(20),
                                border: Border.all(
                                  color: const Color(0xff59B8BE),
                                )),
                            child: const Icon(
                              Icons.check,
                              size: 12,
                              color: Color(0xffFFFFFF),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: h * 0.02,
                    ),
                    const Divider(
                      color: Color(0xffE9E9E9),
                    ),
                    SizedBox(
                      height: h * 0.025,
                    ),
                    MaterialButton(
                      color: const Color(0xff59B8BE),
                      onPressed: () {
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
                              return const Payment_Popup();
                            });
                      },
                      child: const Text(
                        "Proceed to Pay",
                        style:
                            TextStyle(color: Color(0xffFFFFFF), fontSize: 16),
                      ),
                      minWidth: w * 1,
                      height: h * 0.0625,
                      shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                    ),
                  ],
                ),
              ))
        ],
      ),
    );
  }
}
