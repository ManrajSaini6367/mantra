import 'package:flutter/material.dart';

class Edit_Profile extends StatefulWidget {
  const Edit_Profile({super.key});

  @override
  State<Edit_Profile> createState() => _Edit_ProfileState();
}

class _Edit_ProfileState extends State<Edit_Profile> {
  List lst = [
    "Full Name",
    "Email",
    "Phone No.",
    "Address",
    "Birth Date",
    "Birth Time",
    "Born Location",
    "Occupation",
    "Marriage"
  ];
  var h, w;
  @override
  Widget build(BuildContext context) {
    h = MediaQuery.of(context).size.height;
    w = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: const Color(0xffFFFFFF),
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Color(0xff060219)),
        elevation: 1,
        backgroundColor: const Color(0xffFFFFFF),
        centerTitle: true,
        title: const Text(
          "Edit Profile",
          style: TextStyle(color: Color(0xff060219), fontSize: 22),
        ),
      ),
      body: ListView(
        physics: const BouncingScrollPhysics(),
        children: [
          SizedBox(
            height: h * 0.02,
          ),
          Stack(
            children: [
              Align(
                alignment: Alignment.topCenter,
                child: Image.asset(
                  "assets/Images/1.png",
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 35, left: 53),
                child: Align(
                  alignment: Alignment.topCenter,
                  child: Image.asset(
                    "assets/Images/edit-profile.png",
                    height: h * 0.0275,
                  ),
                ),
              )
            ],
          ),
          SizedBox(
            height: h * 0.033,
          ),
          ListView.builder(
              physics: const BouncingScrollPhysics(),
              scrollDirection: Axis.vertical,
              itemCount: lst.length,
              shrinkWrap: true,
              itemBuilder: (BuildContext context, int index) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: h * 0.025,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 13),
                      child: Text(
                        lst.elementAt(index).toString(),
                        style:
                            const TextStyle(fontSize: 16, color: Color(0xff000000)),
                      ),
                    ),
                    SizedBox(
                      height: h * 0.0075,
                    ),
                    const Divider(
                      color: Color(0xff9E9E9E29),
                    )
                  ],
                );
              }),
          SizedBox(
            height: h * 0.04,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 13, right: 13),
            child: MaterialButton(
              color: const Color(0xff59B8BE),
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text(
                "Submit",
                style: TextStyle(color: Color(0xffFFFFFF), fontSize: 16),
              ),
              minWidth: w * 1,
              height: h * 0.0625,
              shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10))),
            ),
          ),
          SizedBox(
            height: h * 0.04,
          ),
        ],
      ),
    );
  }
}
