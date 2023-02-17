import 'package:flutter/material.dart';
import 'package:food_app/Screens/Dashboard/Myntra_Project/Dashboard/7_Home.dart';

class Select_Language extends StatefulWidget {
  const Select_Language({super.key});

  @override
  State<Select_Language> createState() => _Select_LanguageState();
}

class _Select_LanguageState extends State<Select_Language> {
  String? language;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Column(
            children: [
              const SizedBox(height: 46),
              const Center(
                child: Text(
                  "Select Language",
                  style: TextStyle(fontSize: 24),
                ),
              ),
              const SizedBox(height: 43),
              Image.asset(
                "assets/Images/select-language@2x.png",
                height: 249,
                width: 240,
              ),
              const SizedBox(height: 78),
              Stack(
                children: [
                  Container(
                    height: 354,
                    width: 400,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/Images/background@2x.png"),
                          fit: BoxFit.fill),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 13, right: 13),
                      child: Column(
                        children: [
                          const SizedBox(
                            height: 30,
                          ),
                          Container(
                            margin: const EdgeInsets.only(),
                            height: 50,
                            width: 400,
                            decoration: BoxDecoration(
                                color: const Color(0xffFFFFFF),
                                boxShadow: [
                                  BoxShadow(
                                    color: const Color(0xff82828229).withOpacity(0.1),
                                    blurRadius: 2,
                                  ),
                                ],
                                borderRadius: BorderRadius.circular(10)),
                            child: RadioListTile(
                                title: const Text("Hindi"),
                                value: "Hindi",
                                groupValue: language,
                                onChanged: (value) {
                                  setState(() {
                                    language = value!;
                                  });
                                }),
                          ),
                          const SizedBox(
                            height: 54,
                          ),
                          MaterialButton(
                            color: const Color(0xff59B8BE),
                            onPressed: () {
                              setState(() {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: ((context) => const Screen())));
                              });
                            },
                            child: const Text(
                              "Continue",
                              style: TextStyle(
                                  color: Color(0xffFFFFFF), fontSize: 16),
                            ),
                            minWidth: 500,
                            height: 50,
                            shape: const RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10))),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 13, right: 13),
            child: Container(
              margin: const EdgeInsets.only(top: 410),
              height: 50,
              width: 400,
              decoration: BoxDecoration(
                  color: const Color(0xffFFFFFF),
                  boxShadow: [
                    BoxShadow(
                      color: const Color(0xff82828229).withOpacity(0.2),
                      blurRadius: 6,
                    ),
                  ],
                  borderRadius: BorderRadius.circular(10)),
              child: RadioListTile(
                  title: const Text("English"),
                  value: "English",
                  groupValue: language,
                  onChanged: (value) {
                    setState(() {
                      language = value!;
                    });
                  }),
            ),
          ),
        ],
      ),
    );
  }
}
