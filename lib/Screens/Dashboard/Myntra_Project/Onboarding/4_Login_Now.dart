// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:food_app/Screens/Dashboard/Myntra_Project/Onboarding/5_OTP_verification.dart';

String number = "";

class LoginNow extends StatefulWidget {
  const LoginNow({super.key});

  @override
  State<LoginNow> createState() => _LoginNowState();
}

class _LoginNowState extends State<LoginNow> {
  TextEditingController numbercontroller = TextEditingController();
  bool check = false;
  List lst = [
    {
      "image": "assets/Images/icons8-google-96@2x.png",
      "color": Color.fromARGB(255, 240, 234, 234)
    },
    {
      "image": "assets/Images/Icon awesome-facebook-f.png",
      "color": Color(0xff1B74E4)
    },
    {
      "image": "assets/Images/Icon awesome-apple@2x.png",
      "color": Color(0xff000000)
    }
  ];
  final formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Form(
        key: formkey,
        child: ListView(
          physics: BouncingScrollPhysics(),
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(13, 0, 13, 0),
              child: Column(
                children: [
                  Center(
                    child: Text(
                      "Login Now",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Image.asset(
                    "assets/Images/Group 1074@2x.png",
                    width: 247,
                    height: 220,
                  ),
                  SizedBox(
                    height: 33,
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      'Please enter your phone number',
                      style: TextStyle(fontSize: 15.5),
                    ),
                  ),
                  SizedBox(
                    height: 18,
                  ),
                ],
              ),
            ),
            Container(
              height: 354,
              width: 380,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/Images/background@2x.png"),
                    fit: BoxFit.fill),
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 13, right: 13),
                child: Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        boxShadow: const [
                          BoxShadow(
                            color: Color(0xff82828229),
                            blurRadius: 13,
                          ),
                        ],
                      ),
                      child: TextFormField(
                        onTap: () {
                          if (numbercontroller.text.length > 9) {
                            check = !check;
                            setState(() {});
                          }
                        },
                        readOnly: check,
                        controller: numbercontroller,
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.white,
                            contentPadding:
                                EdgeInsets.symmetric(horizontal: 10),
                            hintStyle: TextStyle(fontSize: 15),
                            hintText: "Phone number",
                            border: InputBorder.none,
                            counterText: '',
                            focusedBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.transparent),
                                borderRadius: BorderRadius.circular(10)),
                            enabledBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.transparent),
                                borderRadius: BorderRadius.circular(10))),
                        maxLength: 10,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 30,
                          child: Checkbox(
                              value: check,
                              onChanged: (value) {
                                if (numbercontroller.text.length > 9) {
                                  setState(() {
                                    check = value!;
                                  });
                                }
                              }),
                        ),
                        Text(
                          "I agree to the ",
                          style: TextStyle(fontSize: 15),
                        ),
                        Text(
                          "Terms & Conditions",
                          style: TextStyle(
                              fontSize: 15,
                              decoration: TextDecoration.underline,
                              color: Color(0xff59B8BE)),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    MaterialButton(
                      color: Color(0xff59B8BE),
                      onPressed: () {
                        if (check) {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: ((context) => OTPVerification(
                                        number:
                                            numbercontroller.text.toString(),
                                      ))));
                        }
                      },
                      // ignore: sort_child_properties_last
                      child: Text(
                        "Continue",
                        style:
                            TextStyle(color: Color(0xffFFFFFF), fontSize: 16),
                      ),
                      minWidth: 500,
                      height: 50,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      "Or",
                      style: TextStyle(color: Color(0xff59B8BE), fontSize: 16),
                    ),
                    SizedBox(height: 15),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: List.generate(
                            lst.length,
                            (index) => Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 16),
                                  child: CircleAvatar(
                                    backgroundColor: lst[index]['color'],
                                    radius: 25,
                                    child: Image.asset(
                                      lst[index]['image'].toString(),
                                      height: 24,
                                      width: 24,
                                    ),
                                  ),
                                ))),
                    SizedBox(height: 15),
                    Text(
                      "I'm an astrologer",
                      style: TextStyle(color: Color(0xff59B8BE), fontSize: 19),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
