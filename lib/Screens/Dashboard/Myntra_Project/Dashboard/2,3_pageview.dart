import 'package:flutter/material.dart';

class Pageview extends StatefulWidget {
  const Pageview({super.key});

  @override
  State<Pageview> createState() => _PageviewState();
}

class _PageviewState extends State<Pageview> {
  List lst = [
    {
      "image": "assets/Images/4906331-ai@2x.png",
      "title": "Live Session First",
      "title1":
          "To find your destined 1Mantra.\nLet's watch some live ession first & know how to \ntake a consultation."
    },
    {
      "image": "assets/Images/3531373-ai@2x.png",
      "title": "Enjoy your Speacial Offer!",
      "title1":
          "To find your destined 1Mantra. \nLet's watch some live ession first & know how to \ntake a consultation."
    }
  ];

  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: PageView.builder(
          onPageChanged: (int) {
            setState(() {
              currentIndex = int;
              print(currentIndex);
            });
          },
          physics: const BouncingScrollPhysics(),
          itemCount: lst.length,
          itemBuilder: (BuildContext context, int index) {
            return Padding(
              padding: const EdgeInsets.fromLTRB(13, 60, 13, 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Align(
                      alignment: Alignment.topRight,
                      child: Text(
                        "Skip >>",
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.w400),
                      )),
                  const SizedBox(
                    height: 60,
                  ),
                  Image.asset(
                    lst[index]["image"].toString(),
                    height: 194,
                    width: 342,
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  Text(
                    lst.elementAt(index)['title'].toString(),
                    style: const TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 7,
                  ),
                  const Text(
                    "To find your destined 1Mantra.\nLet's watch some live ession first & know how to\ntake a consultation",
                    style: TextStyle(fontSize: 13),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(
                        lst.length,
                        (index) => Center(
                          child: AnimatedContainer(
                            duration: const Duration(milliseconds: 300),
                            height: 15,
                            width: 15,
                            alignment: Alignment.center,
                            margin: const EdgeInsets.all(5),
                            decoration: BoxDecoration(
                              border: Border.all(color: const Color(0xff59B8BE)),
                              color: currentIndex == index
                                  ? const Color(0xff59B8BE)
                                  : Colors.transparent,
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                      )),
                  const SizedBox(
                    height: 40,
                  ),
                  const CircleAvatar(
                    backgroundColor: Color(0xff59B8BE),
                    radius: 29,
                    child: Icon(
                      Icons.arrow_right_alt_rounded,
                      color: Color(0xffFFFFFF),
                    ),
                  )
                ],
              ),
            );
          }),
    );
  }
}
