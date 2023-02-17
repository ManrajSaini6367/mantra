import 'package:flutter/material.dart';

class Login_Popup extends StatefulWidget {
  const Login_Popup({super.key});

  @override
  State<Login_Popup> createState() => _Login_PopupState();
}

class _Login_PopupState extends State<Login_Popup> {
  var h, w;
  TextEditingController numbercontroller = TextEditingController();
  bool check = false;
  @override
  Widget build(BuildContext context) {
    h = MediaQuery.of(context).size.height;
    w = MediaQuery.of(context).size.width;

    return Container(
      child: Padding(
        padding: const EdgeInsets.only(left: 10, right: 10),
        child: ListView(
          physics: const BouncingScrollPhysics(),
          children: [
            SizedBox(
              height: h * 0.0125,
            ),
            Align(
                alignment: Alignment.topRight,
                child: InkWell(
                    onTap: () {
                      setState(() {
                        Navigator.pop(context);
                      });
                    },
                    child: const Icon(Icons.clear))),
            SizedBox(
              height: h * 0.0014,
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Image.asset(
                "assets/Images/1mantra.png",
                height: h * 0.05625,
              ),
            ),
            SizedBox(
              height: h * 0.005,
            ),
            const Text(
              "Welcome to\n1mantra",
              style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                  color: Color(0xff060219)),
            ),
            SizedBox(
              height: h * 0.015,
            ),
            Container(
              alignment: Alignment.center,
              height: 60,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: const Color(0xff82828229).withOpacity(0.1),
                      blurRadius: 13,
                    )
                  ]),
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
                    contentPadding: const EdgeInsets.symmetric(horizontal: 10),
                    hintStyle: const TextStyle(fontSize: 15),
                    hintText: "Phone number",
                    border: InputBorder.none,
                    counterText: '',
                    focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.transparent),
                        borderRadius: BorderRadius.circular(10)),
                    enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.transparent),
                        borderRadius: BorderRadius.circular(10))),
                maxLength: 10,
              ),
            ),
            SizedBox(
              height: h * 0.02,
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
                const Text(
                  "I agree to the ",
                  style: TextStyle(fontSize: 15),
                ),
                const Text(
                  "Terms & Conditions",
                  style: TextStyle(
                      fontSize: 15,
                      decoration: TextDecoration.underline,
                      color: Color(0xff59B8BE)),
                ),
              ],
            ),
            SizedBox(
              height: h * 0.02,
            ),
            MaterialButton(
              color: const Color(0xff59B8BE),
              onPressed: () {
                if (check) {
                  Navigator.pop(context);
                }
              },
              // ignore: sort_child_properties_last
              child: const Text(
                "Continue",
                style: TextStyle(color: Color(0xffFFFFFF), fontSize: 16),
              ),
              minWidth: 500,
              height: 50,
              shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10))),
            ),
            SizedBox(
              height: h * 0.0225,
            ),
            InkWell(
              onTap: (() {
                setState(() {
                  Navigator.pop(context);
                });
              }),
              child: Container(
                height: h * 0.0575,
                width: w * 1,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: const Color(0xffE8E8E8))),
                child: Padding(
                  padding: const EdgeInsets.only(left: 13, right: 13),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset("assets/Images/Icon awesome-facebook-f.png"),
                      const Text(
                        "Continue with Facebook",
                        style:
                            TextStyle(color: Color(0xff000000), fontSize: 16),
                      ),
                      Row()
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: h * 0.0175,
            ),
            InkWell(
              onTap: (() {
                setState(() {
                  Navigator.pop(context);
                });
              }),
              child: Container(
                height: h * 0.0575,
                width: w * 1,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: const Color(0xffE8E8E8))),
                child: Padding(
                  padding: const EdgeInsets.only(left: 13, right: 13),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset(
                        "assets/Images/icons8-google-96@2x.png",
                        height: h * 0.02,
                      ),
                      const Text(
                        "Continue with Google",
                        style:
                            TextStyle(color: Color(0xff000000), fontSize: 16),
                      ),
                      Row()
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: h * 0.0175,
            ),
            const Align(
              alignment: Alignment.center,
              child: Text(
                "I'm an astrologer",
                style: TextStyle(color: Color(0xff848484), fontSize: 15),
              ),
            ),
            SizedBox(
              height: h * 0.012,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: h * 0.02,
                  width: w * 0.044,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(
                        color: const Color(0xff848484),
                      )),
                  child: const Icon(
                    Icons.check,
                    size: 12,
                    color: Color(0xff848484),
                  ),
                ),
                SizedBox(
                  width: w * 0.01939,
                ),
                const Text(
                  "By joining 1mantra, you agree to our",
                  style: TextStyle(color: Color(0xff848484), fontSize: 15),
                ),
              ],
            ),
            const Align(
              alignment: Alignment.center,
              child: Text(
                "Terms of Service",
                style: TextStyle(color: Color(0xff000000), fontSize: 15),
              ),
            ),
            SizedBox(
              height: h * 0.0125,
            )
          ],
        ),
      ),
    );
  }
}
