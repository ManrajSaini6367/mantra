import 'package:flutter/material.dart';

import '../Onboarding/4_Login_Now.dart';
import '11_payment.dart';
import '15_Offer&Cashback.dart';
import '20_About_us.dart';
import '32_Edit_Profile.dart';

class Drawer_Manu extends StatefulWidget {
  const Drawer_Manu({super.key});

  @override
  State<Drawer_Manu> createState() => _Drawer_ManuState();
}

class _Drawer_ManuState extends State<Drawer_Manu> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(20), bottomRight: Radius.circular(20))),
      width: 289,
      child: Drawer(
        backgroundColor: const Color(0xff59B8BE),
        child: ListView(physics: const BouncingScrollPhysics(), children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(14, 0, 0, 18),
            child: Align(
              alignment: Alignment.centerLeft,
              child: InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: const CircleAvatar(
                  radius: 12,
                  backgroundColor: Color(0xff98CFD3),
                  child: Icon(Icons.clear),
                ),
              ),
            ),
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(14, 0, 9, 25),
                child: Image.asset(
                  'assets/Images/1.png',
                  height: 46,
                  width: 46,
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Rohan Sharma',
                    style: TextStyle(fontSize: 17, color: Colors.white),
                  ),
                  const Text(
                    '+91-7891023456',
                    style: TextStyle(fontSize: 13, color: Colors.white),
                  )
                ],
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(14, 0, 14, 30),
            child: Container(
              height: 34,
              width: 258,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(10)),
              child: Padding(
                padding: const EdgeInsets.only(left: 14, right: 14),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      'Wallet Balance',
                      style: TextStyle(fontSize: 17, color: Colors.black),
                    ),
                    Text(
                      '₹ 500',
                      style: TextStyle(fontSize: 17, color: Color(0xff59B8BE)),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(12, 0, 12, 0),
                child: Image.asset(
                  'assets/Images/NoPath - Copy (4)@2x.png',
                  height: 37,
                  width: 37,
                ),
              ),
              const Text(
                'My Orders',
                style: TextStyle(fontSize: 17, color: Colors.white),
              ),
            ],
          ),
          const SizedBox(
            height: 6.5,
          ),
          const Divider(
            height: 1,
            color: Colors.white,
          ),
          const SizedBox(
            height: 15.5,
          ),
          InkWell(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: ((context) => const Edit_Profile())));
            },
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(12, 0, 12, 0),
                  child: Image.asset(
                    'assets/Images/NoPath - Copy (4)@2x.png',
                    height: 37,
                    width: 37,
                  ),
                ),
                const Text(
                  'Edit Profile',
                  style: TextStyle(fontSize: 17, color: Colors.white),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 6.5,
          ),
          const Divider(
            height: 1,
            color: Colors.white,
          ),
          const SizedBox(
            height: 15.5,
          ),
          InkWell(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: ((context) => const Offer__Cashback())));
            },
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(12, 0, 12, 0),
                  child: Image.asset(
                    'assets/Images/NoPath - Copy (4)@2x.png',
                    height: 37,
                    width: 37,
                  ),
                ),
                const Text(
                  'Claim Cashback',
                  style: TextStyle(fontSize: 17, color: Colors.white),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 6.5,
          ),
          const Divider(
            height: 1,
            color: Colors.white,
          ),
          const SizedBox(
            height: 15.5,
          ),
          InkWell(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: ((context) => const Payment())));
            },
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(12, 0, 12, 0),
                  child: Image.asset(
                    'assets/Images/NoPath - Copy (4)@2x.png',
                    height: 37,
                    width: 37,
                  ),
                ),
                const Text(
                  'Recharge',
                  style: TextStyle(fontSize: 17, color: Colors.white),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 6.5,
          ),
          const Divider(
            height: 1,
            color: Colors.white,
          ),
          const SizedBox(
            height: 15.5,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(12, 0, 12, 0),
                child: Image.asset(
                  'assets/Images/NoPath - Copy (4)@2x.png',
                  height: 37,
                  width: 37,
                ),
              ),
              const Text(
                'Recharge History',
                style: TextStyle(fontSize: 17, color: Colors.white),
              ),
            ],
          ),
          const SizedBox(
            height: 6.5,
          ),
          const Divider(
            height: 1,
            color: Colors.white,
          ),
          const SizedBox(
            height: 15.5,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(12, 0, 12, 0),
                child: Image.asset(
                  'assets/Images/NoPath - Copy (4)@2x.png',
                  height: 37,
                  width: 37,
                ),
              ),
              const Text(
                'My Wallet',
                style: TextStyle(fontSize: 17, color: Colors.white),
              ),
            ],
          ),
          const SizedBox(
            height: 6.5,
          ),
          const Divider(
            height: 1,
            color: Colors.white,
          ),
          const SizedBox(
            height: 15.5,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(12, 0, 12, 0),
                child: Image.asset(
                  'assets/Images/NoPath - Copy (4)@2x.png',
                  height: 37,
                  width: 37,
                ),
              ),
              const Text(
                'Following',
                style: TextStyle(fontSize: 17, color: Colors.white),
              ),
            ],
          ),
          const SizedBox(
            height: 6.5,
          ),
          const Divider(
            height: 1,
            color: Colors.white,
          ),
          const SizedBox(
            height: 15.5,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(12, 0, 12, 0),
                child: Image.asset(
                  'assets/Images/NoPath - Copy (4)@2x.png',
                  height: 37,
                  width: 37,
                ),
              ),
              const Text(
                'Help & Support',
                style: TextStyle(fontSize: 17, color: Colors.white),
              ),
            ],
          ),
          const SizedBox(
            height: 6.5,
          ),
          const Divider(
            height: 1,
            color: Colors.white,
          ),
          const SizedBox(
            height: 15.5,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(12, 0, 12, 0),
                child: Image.asset(
                  'assets/Images/NoPath - Copy (4)@2x.png',
                  height: 37,
                  width: 37,
                ),
              ),
              const Text(
                'Contact Us',
                style: TextStyle(fontSize: 17, color: Colors.white),
              ),
            ],
          ),
          const SizedBox(
            height: 6.5,
          ),
          const Divider(
            height: 1,
            color: Colors.white,
          ),
          const SizedBox(
            height: 15.5,
          ),
          InkWell(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: ((context) => const About_Us())));
            },
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(12, 0, 12, 0),
                  child: Image.asset(
                    'assets/Images/NoPath - Copy (4)@2x.png',
                    height: 37,
                    width: 37,
                  ),
                ),
                const Text(
                  'About us',
                  style: TextStyle(fontSize: 17, color: Colors.white),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 6.5,
          ),
          const Divider(
            height: 1,
            color: Colors.white,
          ),
          const SizedBox(
            height: 15.5,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(12, 0, 12, 0),
                child: Image.asset(
                  'assets/Images/NoPath - Copy (4)@2x.png',
                  height: 37,
                  width: 37,
                ),
              ),
              const Text(
                'Privacy Policy',
                style: TextStyle(fontSize: 17, color: Colors.white),
              ),
            ],
          ),
          const SizedBox(
            height: 6.5,
          ),
          const Divider(
            height: 1,
            color: Colors.white,
          ),
          const SizedBox(
            height: 15.5,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(12, 0, 12, 0),
                child: Image.asset(
                  'assets/Images/NoPath - Copy (4)@2x.png',
                  height: 37,
                  width: 37,
                ),
              ),
              const Text(
                'Terms and Conditions',
                style: TextStyle(fontSize: 17, color: Colors.white),
              ),
            ],
          ),
          const SizedBox(
            height: 6.5,
          ),
          const Divider(
            height: 1,
            color: Colors.white,
          ),
          const SizedBox(
            height: 15.5,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(12, 0, 12, 0),
                child: Image.asset(
                  'assets/Images/NoPath - Copy (4)@2x.png',
                  height: 37,
                  width: 37,
                ),
              ),
              const Text(
                "FA's",
                style: TextStyle(fontSize: 17, color: Colors.white),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(18, 67, 16, 6),
            child: MaterialButton(
              shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10))),
              onPressed: () {},
              height: 50,
              minWidth: 254,
              color: Colors.white,
              child: const Text(
                "Log Out",
                style: TextStyle(fontSize: 17, color: Color(0xff59B8BE)),
              ),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: ((context) => const LoginNow())));
            },
            child: const Align(
              alignment: Alignment.center,
              child: Text(
                "Sign up as Astrologer",
                style: TextStyle(fontSize: 19, color: Colors.white),
              ),
            ),
          ),
          const SizedBox(
            height: 14,
          ),
        ]),
      ),
    );
  }
}
