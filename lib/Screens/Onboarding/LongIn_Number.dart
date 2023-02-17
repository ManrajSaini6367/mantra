import 'package:flutter/material.dart';
import 'package:food_app/Resueable/Utils.dart';
import 'package:food_app/Screens/Onboarding/OTP.dart';

String abc = "";

class LongIN_Number extends StatefulWidget {
  const LongIN_Number({super.key});

  @override
  State<LongIN_Number> createState() => _LongIN_NumberState();
}

class _LongIN_NumberState extends State<LongIN_Number> {
  TextEditingController numbercontroller = TextEditingController();
  int index = 1;
  final formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: customAppbar(),
      body: Form(
        key: formkey,
        child: Padding(
          padding: const EdgeInsets.only(left: 15, right: 15, top: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              customtext('Enter your mobile number to get  OTP', Colors.black,
                  30, FontWeight.bold, FontStyle.normal),
              const SizedBox(height: 20),
              customtextformfield(
                  TextInputType.number,
                  '10 digit mobile number',
                  "Mobile Number",
                  '+91  |  ',
                  () {},
                  10,
                  false,
                  numbercontroller, (numbercontroller) {
                if (numbercontroller!.isEmpty) {
                  return "Please enter number ";
                }
                abc = numbercontroller;
                return null;
              }),
              const SizedBox(height: 10),
              customtext('Get OTP via:', Colors.black, 22, FontWeight.normal,
                  FontStyle.normal),
              const SizedBox(height: 20),
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                custombutton(() {
                  index = 0;
                  setState(() {});
                },
                    index == 0
                        ? const Color.fromARGB(255, 248, 3, 3)
                        : const Color.fromARGB(255, 252, 250, 250),
                    50,
                    80,
                    customtext(
                        "WhatsApp",
                        index == 0
                            ? Colors.white
                            : const Color.fromARGB(255, 247, 3, 3),
                        25,
                        FontWeight.normal,
                        FontStyle.normal),
                    BorderRadius.circular(10)),
                custombutton(() {
                  
                  if (formkey.currentState!.validate()) {
                    
                    Navigator.push(context,
                        MaterialPageRoute(builder: ((context) => const OTP())));
                  }

                  index = 1;
                  setState(() {});
                },
                    index == 1
                        ? const Color.fromARGB(255, 247, 4, 4)
                        : const Color.fromARGB(255, 241, 238, 238),
                    50,
                    140,
                    customtext(
                        "SMS",
                        index == 1
                            ? Colors.white
                            : const Color.fromARGB(255, 240, 3, 3),
                        25,
                        FontWeight.normal,
                        FontStyle.normal),
                    BorderRadius.circular(10)),
              ]),
              const SizedBox(height: 20),
              Row(
                children: [
                  const Text(
                    "By clicking, I accept the",
                    style: TextStyle(fontSize: 15),
                  ),
                  const Text(
                    " terms of service ",
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        decoration: TextDecoration.underline),
                  ),
                  const Text(
                    "and",
                    style: TextStyle(fontSize: 15),
                  ),
                ],
              ),
              const Text(
                "privacy policy",
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    decoration: TextDecoration.underline),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
