import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:food_app/Resueable/Utils.dart';
import 'package:food_app/Screens/Onboarding/LongIn_Number.dart';
import 'package:material_color_utilities/material_color_utilities.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';

class OTP extends StatefulWidget {
  const OTP({super.key});

  @override
  State<OTP> createState() => _OTPState();
}

class _OTPState extends State<OTP> {
  var otp;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: customAppbar(),
      body: Padding(
        padding: const EdgeInsets.only(left: 15, right: 15, top: 250),
        child: ListView(
          physics: const BouncingScrollPhysics(),
          children: [
            customotp(4, const Color.fromARGB(255, 248, 2, 2),
                (String varificationCode) {
              otp = varificationCode;
              showDialog(
                  context: context,
                  builder: ((context) {
                    return AlertDialog(
                        title: const Text('varification otp'),
                        content: Text('Otp enter is $varificationCode'));
                  }));
            }),
            const SizedBox(height: 130),
            custombutton(
                () {},
                const Color.fromARGB(255, 247, 4, 4),
                42,
                600,
                customtext("continue", Colors.white, 28, FontWeight.normal,
                    FontStyle.normal),
                BorderRadius.circular(10)),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                customtext("Recent OTP", Colors.black, 17, FontWeight.normal,
                    FontStyle.normal),
                customtext("Change number", Colors.black, 17, FontWeight.normal,
                    FontStyle.normal),
              ],
            ),
            const SizedBox(height: 70),
            // ignore: prefer_const_constructors
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  abc,
                  style: const TextStyle(fontSize: 20, color: Colors.black),
                ),
                const Text(
                  "Help",
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      decoration: TextDecoration.underline),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
