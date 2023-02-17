import 'package:flutter/material.dart';
import 'package:flutter_holo_date_picker/date_time_formatter.dart';
import 'package:flutter_holo_date_picker/widget/date_picker_widget.dart';
import 'package:food_app/Screens/Dashboard/Myntra_Project/Dashboard/Dialog.dart';

class Chat_Intake extends StatefulWidget {
  const Chat_Intake({super.key});

  @override
  State<Chat_Intake> createState() => _Chat_IntakeState();
}

class _Chat_IntakeState extends State<Chat_Intake> {
  TextEditingController timeinput = TextEditingController();

  var currentatime;
  @override
  void initState() {
    timeinput.text = "";
    currentatime = "";
    super.initState();
  }

  int index = 0;
  List lst = [
    {"title": "Born Location", "hnttxt": "Search Cities"},
    {"title": "Occupation", "hnttxt": "Occupation"},
    {"title": "Marital status", "hnttxt": "Marriage"},
    {"title": "Area of Concern/Services", "hnttxt": "Area of concern"}
  ];
  var h, w;
  DateTime? pickdate;
  DateTime? picktime;
  TextEditingController datecontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    showTime() async {
      TimeOfDay? picktime = await showTimePicker(
        initialTime: TimeOfDay.now(),
        context: context,
      );
    }

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
          "Intake Form",
          style: TextStyle(color: Color(0xff060219), fontSize: 22),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 8),
            child: Image.asset(
              'assets/Images/more.png',
              width: 19,
              height: 22,
            ),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 13, right: 13),
        child: ListView(physics: const BouncingScrollPhysics(), children: [
          SizedBox(height: h * 0.02),
          const Text(
            "Name",
            style: TextStyle(fontSize: 17, color: Color(0xff0000000)),
          ),
          SizedBox(height: h * 0.011),
          TextFormField(
            onTap: () {},
            keyboardType: TextInputType.name,
            decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                contentPadding: const EdgeInsets.symmetric(horizontal: 10),
                hintStyle: const TextStyle(fontSize: 15),
                hintText: "Enter your name",
                border: InputBorder.none,
                focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Color(0xffDBDBDB)),
                    borderRadius: BorderRadius.circular(10)),
                enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Color(0xffDBDBDB)),
                    borderRadius: BorderRadius.circular(10))),
          ),
          SizedBox(height: h * 0.025),
          const Text(
            "Gender",
            // ignore: use_full_hex_values_for_flutter_colors
            style: TextStyle(fontSize: 17, color: Color(0xff0000000)),
          ),
          SizedBox(height: h * 0.011),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(
                onTap: () {
                  setState(() {
                    index = 1;
                  });
                },
                child: Container(
                  height: h * 0.1025,
                  width: w * 0.4155,
                  decoration: BoxDecoration(
                      border: Border.all(
                          color: index == 1
                              ? const Color(0xff59B8BE)
                              : const Color(0xffDBDBDB)),
                      borderRadius: BorderRadius.circular(10)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Female",
                        style: TextStyle(
                            fontSize: 16,
                            color: index == 1
                                ? const Color(0xff59B8BE)
                                : const Color(0xff000000)),
                      ),
                      SizedBox(
                        height: h * 0.01,
                      ),
                      Image.asset("assets/Images/female.png",
                          color: index == 1
                              ? const Color(0xff59B8BE)
                              : const Color(0xff000000))
                    ],
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  setState(() {
                    index = 2;
                  });
                },
                child: Container(
                  height: h * 0.1025,
                  width: w * 0.4155,
                  decoration: BoxDecoration(
                      border: Border.all(
                          color: index == 2
                              ? const Color(0xff59B8BE)
                              : const Color(0xffDBDBDB)),
                      borderRadius: BorderRadius.circular(10)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Male",
                        style: TextStyle(
                            fontSize: 16,
                            color: index == 2
                                ? const Color(0xff59B8BE)
                                : const Color(0xff000000)),
                      ),
                      SizedBox(
                        height: h * 0.01,
                      ),
                      Image.asset("assets/Images/male.png",
                          color: index == 2
                              ? const Color(0xff59B8BE)
                              : const Color(0xff000000))
                    ],
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: h * 0.025),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Birth Date",
                    style: TextStyle(fontSize: 17, color: Color(0xff0000000)),
                  ),
                  SizedBox(height: h * 0.011),
                  Container(
                    alignment: Alignment.center,
                    height: h * 0.05625,
                    width: w * 0.4155,
                    decoration: BoxDecoration(
                        border: Border.all(color: const Color(0xffDBDBDB)),
                        borderRadius: BorderRadius.circular(10)),
                    child: TextFormField(
                      controller: datecontroller,
                      readOnly: true,
                      onTap: () async {
                        pickdate = await showDatePicker(
                          firstDate: DateTime(1990),
                          initialDate: DateTime.now(),
                          lastDate: DateTime.now(),
                          context: context,
                        );
                      },
                      keyboardType: TextInputType.name,
                      decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          contentPadding:
                              const EdgeInsets.symmetric(horizontal: 10),
                          hintStyle: const TextStyle(fontSize: 12),
                          hintText:
                              pickdate == null ? "DD/MM/YYY" : "$pickdate",
                          border: InputBorder.none,
                          suffixIconColor: const Color(0xff898989),
                          suffixIcon: const Icon(Icons.keyboard_arrow_down),
                          focusedBorder: OutlineInputBorder(
                              borderSide:
                                  const BorderSide(color: Colors.transparent),
                              borderRadius: BorderRadius.circular(10)),
                          enabledBorder: OutlineInputBorder(
                              borderSide:
                                  const BorderSide(color: Colors.transparent),
                              borderRadius: BorderRadius.circular(10))),
                    ),
                  )
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Time",
                    style: TextStyle(fontSize: 17, color: Color(0xff0000000)),
                  ),
                  SizedBox(height: h * 0.011),
                  Container(
                    height: h * 0.05625,
                    width: w * 0.4155,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        border: Border.all(color: const Color(0xffDBDBDB)),
                        borderRadius: BorderRadius.circular(10)),
                    child: TextField(
                      decoration: const InputDecoration(
                          hintText: "HH:mm:ss", border: InputBorder.none),
                      readOnly: true,
                      onTap: () {
                        showTime();
                      },
                    ),
                  )
                ],
              ),
            ],
          ),
          ListView.builder(
              physics: const BouncingScrollPhysics(),
              shrinkWrap: true,
              itemCount: lst.length,
              itemBuilder: (BuildContext context, int index) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: h * 0.025),
                    Text(
                      lst.elementAt(index)["title"].toString(),
                      style: const TextStyle(
                          fontSize: 17, color: Color(0xff0000000)),
                    ),
                    SizedBox(height: h * 0.011),
                    TextFormField(
                      onTap: () {},
                      keyboardType: TextInputType.name,
                      decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          contentPadding:
                              const EdgeInsets.symmetric(horizontal: 10),
                          hintStyle: const TextStyle(fontSize: 15),
                          hintText: lst.elementAt(index)["hnttxt"].toString(),
                          border: InputBorder.none,
                          focusedBorder: OutlineInputBorder(
                              borderSide:
                                  const BorderSide(color: Color(0xffDBDBDB)),
                              borderRadius: BorderRadius.circular(10)),
                          enabledBorder: OutlineInputBorder(
                              borderSide:
                                  const BorderSide(color: Color(0xffDBDBDB)),
                              borderRadius: BorderRadius.circular(10))),
                    ),
                  ],
                );
              }),
          SizedBox(height: h * 0.025),
          const Text(
            "Attachment",
            style: TextStyle(fontSize: 17, color: Color(0xff0000000)),
          ),
          SizedBox(height: h * 0.011),
          Container(
              height: h * 0.15,
              width: w * 1,
              decoration: BoxDecoration(
                  border: Border.all(color: const Color(0xffDBDBDB)),
                  borderRadius: BorderRadius.circular(10)),
              child: InkWell(
                onTap: () {
                  showDialog(
                    barrierDismissible: false,
                    context: context,
                    builder: (context) => const Dialog1(),
                  );
                  setState(() {});
                },
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset("assets/Images/file_upload.png"),
                    const Text(
                      "Upload File",
                      style: TextStyle(fontSize: 16, color: Color(0xffA4A4A4)),
                    ),
                  ],
                ),
              )),
          SizedBox(height: h * 0.04),
          MaterialButton(
            color: const Color(0xff59B8BE),
            onPressed: () {},
            child: const Text(
              "Consult Now",
              style: TextStyle(color: Color(0xffFFFFFF), fontSize: 16),
            ),
            minWidth: w * 1,
            height: h * 0.0625,
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(10))),
          ),
          SizedBox(height: h * 0.033),
        ]),
      ),
    );
  }
}
