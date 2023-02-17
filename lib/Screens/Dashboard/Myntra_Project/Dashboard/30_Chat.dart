import 'package:flutter/material.dart';

import '35_Leave_rating.dart';

class Chat extends StatefulWidget {
  const Chat({super.key});

  @override
  State<Chat> createState() => _ChatState();
}

class _ChatState extends State<Chat> {
  TextEditingController chatcontroller = TextEditingController();
  var h, w;
  @override
  Widget build(BuildContext context) {
    h = MediaQuery.of(context).size.height;
    w = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: const Color(0xffFFFFFF),
      appBar: AppBar(
        elevation: 1,
        centerTitle: true,
        backgroundColor: const Color(0xffFFFFFF),
        title: Row(
          children: [
            CircleAvatar(
              radius: 22,
              child: Image.asset("assets/Images/NoPath - Copy (4)@2x.png"),
            ),
            SizedBox(
              width: w * 0.0277,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text("Harry John",
                    style: TextStyle(fontSize: 17, color: Color(0xff000000))),
                const Text("(3:51 mins)",
                    style: TextStyle(fontSize: 12, color: Color(0xff59B8BE))),
                const Text("Chat in-Progress",
                    style: TextStyle(fontSize: 12, color: Color(0xff000000))),
              ],
            )
          ],
        ),
        actions: [
          InkWell(
            onTap: () {
              showDialog(
                context: context,
                builder: (context) => Leave_Rating(),
              );
            },
            child: Row(
              children: [
                Image.asset("assets/Images/Icon feather-refresh-cw.png"),
                SizedBox(
                  width: w * 0.02,
                ),
                const Text("End",
                    style: TextStyle(fontSize: 14, color: Color(0xff000000))),
                SizedBox(
                  width: w * 0.036,
                ),
              ],
            ),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 13, right: 13),
        child: ListView(
          children: [
            SizedBox(height: h * 0.0275),
            Align(
              alignment: Alignment.topRight,
              child: Container(
                padding: const EdgeInsets.fromLTRB(8, 11, 7, 11),
                height: h * 0.3025,
                width: w * 0.71,
                decoration: BoxDecoration(
                    color: const Color(0xffFEFDE8),
                    borderRadius: BorderRadius.circular(8)),
                child: const Text(
                  "Hi Udayy,\nBelow are my details :\nName : Umesh Chidari\nGander : Male\nDOB : 28-Feb-1996\nTOB : 2:30 PM\nPOB : Homnabad, Karnataka, India\nMarital Status : Single\nOccupation : Private Sector\nProblem Area : Career and Business\nQuestion : undefined\n\n\n\nQuestion : undefined",
                  style: TextStyle(fontSize: 12, color: Color(0xff000000)),
                ),
              ),
            ),
            SizedBox(
              height: h * 0.035,
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(10, 11, 7, 11),
              height: h * 0.091,
              width: w * 0.76,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: const Color(0xffF3F3F3))),
              child: const Text(
                "Welcome to 1mantra. Consultant will take a\nminute to prepare your chart. You may ask your\nquestion in the meanwhile",
                style: TextStyle(fontSize: 12, color: Color(0xff000000)),
              ),
            ),
            Row(
              children: [
                Container(
                  padding: const EdgeInsets.only(top: 280),
                  width: w * 0.76,
                  child: TextFormField(
                    controller: chatcontroller,
                    onTap: () {},
                    keyboardType: TextInputType.name,
                    decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        contentPadding:
                            const EdgeInsets.symmetric(horizontal: 10),
                        hintStyle: const TextStyle(
                            fontSize: 15, color: Color(0xff707070)),
                        hintText: "Type a message",
                        border: InputBorder.none,
                        suffixIcon: const Icon(Icons.camera_enhance),
                        focusedBorder: OutlineInputBorder(
                            borderSide:
                                const BorderSide(color: Color(0xff707070)),
                            borderRadius: BorderRadius.circular(8)),
                        enabledBorder: OutlineInputBorder(
                            borderSide:
                                const BorderSide(color: Color(0xff707070)),
                            borderRadius: BorderRadius.circular(8))),
                  ),
                ),
                SizedBox(width: w * 0.0277),
                Padding(
                  padding: const EdgeInsets.only(top: 280),
                  child: InkWell(
                      onTap: () {
                        chatcontroller.clear();
                      },
                      child: Image.asset("assets/Images/Group 568.png")),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
