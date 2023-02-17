import 'package:flutter/material.dart';

import '27_Time_Consultation.dart';

class Book_Appointment extends StatefulWidget {
  const Book_Appointment({super.key});

  @override
  State<Book_Appointment> createState() => _Book_AppointmentState();
}

class _Book_AppointmentState extends State<Book_Appointment> {
  var h, w;
  @override
  Widget build(BuildContext context) {
    h = MediaQuery.of(context).size.height;
    w = MediaQuery.of(context).size.width;
    return Container(
        height: h * 0.3387,
        child: Column(
          children: [
            SizedBox(height: h * 0.0187),
            Padding(
              padding: const EdgeInsets.only(left: 13, right: 13),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(),
                  const Text(
                    "Book Appointment",
                    style: TextStyle(
                      fontSize: 22,
                      color: Color(0xff060219),
                    ),
                  ),
                  InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: const Icon(Icons.clear))
                ],
              ),
            ),
            SizedBox(height: h * 0.0156),
            const Divider(
              color: Color(0xffD2D2D2),
              height: 1,
            ),
            SizedBox(height: h * 0.0181),
            Padding(
              padding: const EdgeInsets.only(left: 13),
              child: Row(
                children: [
                  CircleAvatar(
                    radius: h * 0.05,
                    backgroundColor: Color(0xff59B8BE),
                    child:
                        Image.asset("assets/Images/NoPath - Copy (8)@2x.png"),
                  ),
                  SizedBox(width: w * 0.066),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        "Astro Keshav M.",
                        style: TextStyle(
                            fontSize: 15,
                            color: Color(0xff060219),
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "Exp: 10+ year",
                        style: TextStyle(
                            fontSize: 13,
                            color: Color(0xff848484),
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "Skills: Astrology, Kundli",
                        style: TextStyle(
                            fontSize: 13,
                            color: Color(0xff848484),
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "Language: Hindi, English",
                        style: TextStyle(
                            fontSize: 13,
                            color: Color(0xff848484),
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: h * 0.0268),
            const Divider(
              color: Color(0xffD2D2D2),
              height: 1,
            ),
            SizedBox(height: h * 0.02625),
            Padding(
              padding: const EdgeInsets.only(left: 13, right: 13),
              child: MaterialButton(
                onPressed: () {
                  Navigator.pop(context);
                  showModalBottomSheet(
                      enableDrag: false,
                      isDismissible: false,
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(24),
                          topLeft: Radius.circular(24),
                        ),
                      ),
                      context: context,
                      builder: (context) {
                        return Time_Consultation();
                      });
                },
                shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                height: h * 0.0625,
                minWidth: w * 0.9972,
                color: const Color(0xff59B8BE),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.calendar_month,
                      color: const Color(0xffFFFFFF),
                      size: h * 0.024,
                    ),
                    SizedBox(width: w * 0.0554),
                    const Text(
                      'Book Appoinment',
                      style: TextStyle(fontSize: 17, color: Color(0xffFFFFFF)),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ));
  }
}
