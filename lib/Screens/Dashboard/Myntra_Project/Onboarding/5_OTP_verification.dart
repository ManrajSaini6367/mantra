// ignore_for_file: prefer_const_constructors, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:food_app/Screens/Dashboard/Myntra_Project/Dashboard/6_Select_Language.dart';



class OTPVerification extends StatefulWidget {
  var number;
  OTPVerification({super.key, required this.number});

  @override
  State<OTPVerification> createState() => _OTPVerificationState();
}

class _OTPVerificationState extends State<OTPVerification> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: [
        const  SizedBox(height: 46),
        const  Center(
            child: Text(
              "Verification",
              style: TextStyle(
                fontSize: 24,
              ),
            ),
          ),
        const  SizedBox(
            height: 45,
          ),
          Image.asset(
            "assets/Images/5243319-ai@2x.png",
            height: 244,
            width: 240,
          ),
        const  SizedBox(
            height: 33,
          ),
        const  Padding(
            padding:  EdgeInsets.only(left: 13, right: 13),
            child: Text(
              "OTP has been sent on your registered",
              style: TextStyle(
                fontSize: 18,
              ),
            ),
          ),
          Row(
            children: [
            const  Padding(
                padding:  EdgeInsets.only(left: 13, right: 13),
                child: Text(
                  "Phone Number",
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
              ),
              Text(
                "${widget.number}",
                style:const TextStyle(
                  color: Colors.green,
                  fontSize: 20,
                ),
              ),
            ],
          ),
          Container(
            height: 354,
            width: 373,
            decoration:const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/Images/background@2x.png"),
                  fit: BoxFit.fill),
            ),
            child: Padding(
              padding: const EdgeInsets.only(right: 13, left: 13),
              child: Column(
                children: [
                const  SizedBox(
                    height: 21,
                  ),
                  OtpTextField(
                    cursorColor: Colors.green,
                    focusedBorderColor: Colors.green,
                    borderRadius: BorderRadius.circular(8),
                    fieldWidth: 75,
                    numberOfFields: 4,
                    // enabledBorderColor: Colors.amber,
                    disabledBorderColor: Colors.blue,
                    showFieldAsBox: true,
                    onCodeChanged: (String code) {},
                    onSubmit: (String verificationCode) {
                      showDialog(
                          context: context,
                          builder: (context) {
                            return AlertDialog(
                              title:const Text("Verification Code"),
                              content:
                                  Text('Code entered is $verificationCode'),
                            );
                          });
                    },
                  ),
                 const SizedBox(
                    height: 25,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const[
                      Text(
                        "Didn't Receive Code?",
                        style: TextStyle(
                          fontSize: 16,
                        ),
                      ),
                      Text(
                        " Resend Now",
                        style:
                            TextStyle(fontSize: 16, color: Color(0xff59B8BE)),
                      ),
                    ],
                  ),
                const  SizedBox(
                    height: 34,
                  ),
                  MaterialButton(
                    color:const Color(0xff59B8BE),
                    onPressed: () {
                      setState(() {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: ((context) => Select_Language())));
                      });
                    },
                    child: Text(
                      "Continue",
                      style: TextStyle(color: Color(0xffFFFFFF), fontSize: 16),
                    ),
                    minWidth: 500,
                    height: 50,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
