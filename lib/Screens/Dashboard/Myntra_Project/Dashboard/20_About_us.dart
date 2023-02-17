import 'package:flutter/material.dart';

class About_Us extends StatefulWidget {
  const About_Us({super.key});

  @override
  State<About_Us> createState() => About_UsState();
}

class About_UsState extends State<About_Us> {
  var h, w;
  @override
  Widget build(BuildContext context) {
    h = MediaQuery.of(context).size.height;
    w = MediaQuery.of(context).size.width;
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          elevation: 1,
          centerTitle: true,
          iconTheme: const IconThemeData(color: Color(0xff060219)),
          backgroundColor: Colors.white,
          title: const Text(
            "About us",
            style: TextStyle(fontSize: 22, color: Color(0xff060219)),
          ),
        ),
        body: Center(
          child: NotificationListener<OverscrollIndicatorNotification>(
            onNotification: (OverscrollIndicatorNotification overScroll) {
              overScroll.disallowGlow();
              return false;
            },
            child: Padding(
              padding: const EdgeInsets.fromLTRB(13, 16, 13, 20),
              child: ListView(
                children: [
                  const Text(
                    "FAQ's",
                    style: TextStyle(fontSize: 19, color: Color(0xff000000)),
                  ),
                  SizedBox(height: h * 0.00625),
                  const Text(
                    "Lorem ipsum, or lapsus as it is sometimes known, is dummy text used in laying out print, graphic or web designs. The passage is attributed to an unknown typesetter in the 15th century who is thought to have scrambled parts of Cicero's De Fin bus Bono rum et Malo rum for use.",
                    style: TextStyle(fontSize: 16, color: Color(0xff707070)),
                  ),
                  SizedBox(height: h * 0.005),
                  const Text(
                    "There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even slightly believable.",
                    style: TextStyle(fontSize: 16, color: Color(0xff707070)),
                  ),
                  SizedBox(height: h * 0.00625),
                  const Text(
                    "If you are going to use a passage of Lorem Ipsum, you need to be sure there isn't anything embarrassing hidden in the middle of text.",
                    style: TextStyle(fontSize: 16, color: Color(0xff707070)),
                  ),
                  SizedBox(height: h * 0.00825),
                  const Text(
                    "If you are going to use a passage of Lorem Ipsum, you need to be sure there isn't anything embarrassing hidden in the middle of text.",
                    style: TextStyle(fontSize: 16, color: Color(0xff707070)),
                  ),
                  SizedBox(height: h * 0.03),
                  const Text(
                    "Terms and Conditions",
                    style: TextStyle(fontSize: 19, color: Color(0xff000000)),
                  ),
                  SizedBox(height: h * 0.00625),
                  const Text(
                    "Lorem ipsum, or lapsus as it is sometimes known, is dummy text used in laying out print, graphic or web designs. The passage is attributed to an unknown typesetter in the 15th century who is thought to have scrambled parts of Cicero's De Fin bus Bono rum et Malo rum for use.",
                    style: TextStyle(fontSize: 16, color: Color(0xff707070)),
                  ),
                  SizedBox(height: h * 0.005),
                  const Text(
                    "There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even slightly believable.",
                    style: TextStyle(fontSize: 16, color: Color(0xff707070)),
                  ),
                  SizedBox(height: h * 0.00625),
                  const Text(
                    "If you are going to use a passage of Lorem Ipsum, you need to be sure there isn't anything embarrassing hidden in the middle of text.",
                    style: TextStyle(fontSize: 16, color: Color(0xff707070)),
                  ),
                  SizedBox(height: h * 0.00625),
                  const Text(
                    "Privacy Policy",
                    style: TextStyle(fontSize: 19, color: Color(0xff000000)),
                  ),
                  SizedBox(height: h * 0.00625),
                  const Text(
                    "Lorem ipsum, or lapsus as it is sometimes known, is dummy text used in laying out print, graphic or web designs. The passage is attributed to an unknown typesetter in the 15th century who is thought to have scrambled parts of Cicero's De Fin bus Bono rum et Malo rum for use.",
                    style: TextStyle(fontSize: 16, color: Color(0xff707070)),
                  ),
                  SizedBox(height: h * 0.005),
                  const Text(
                    "There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even slightly believable.",
                    style: TextStyle(fontSize: 16, color: Color(0xff707070)),
                  ),
                  SizedBox(height: h * 0.00625),
                  const Text(
                    "If you are going to use a passage of Lorem Ipsum, you need to be sure there isn't anything embarrassing hidden in the middle of text.",
                    style: TextStyle(fontSize: 16, color: Color(0xff707070)),
                  ),
                  SizedBox(height: h * 0.00625),
                  const Text(
                    "About Us",
                    style: TextStyle(fontSize: 19, color: Color(0xff000000)),
                  ),
                  SizedBox(height: h * 0.00625),
                  const Text(
                    "Lorem ipsum, or lapsus as it is sometimes known, is dummy text used in laying out print, graphic or web designs. The passage is attributed to an unknown typesetter in the 15th century who is thought to have scrambled parts of Cicero's De Fin bus Bono rum et Malo rum for use.",
                    style: TextStyle(fontSize: 16, color: Color(0xff707070)),
                  ),
                  SizedBox(height: h * 0.005),
                  const Text(
                    "There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even slightly believable.",
                    style: TextStyle(fontSize: 16, color: Color(0xff707070)),
                  ),
                  SizedBox(height: h * 0.00625),
                  const Text(
                    "If you are going to use a passage of Lorem Ipsum, you need to be sure there isn't anything embarrassing hidden in the middle of text.",
                    style: TextStyle(fontSize: 16, color: Color(0xff707070)),
                  ),
                  SizedBox(height: h * 0.025),
                ],
              ),
            ),
          ),
        ));
  }
}
