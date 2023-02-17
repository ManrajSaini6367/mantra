import 'package:flutter/material.dart';
import 'package:food_app/Resueable/Utils.dart';

class Location extends StatefulWidget {
  const Location({super.key});

  @override
  State<Location> createState() => _LocationState();
}

class _LocationState extends State<Location> {
  List selectcity = [
    "SelectCity",
    "Jaipur",
    "Gangapur City",
    "Dosa",
    "Lalsat",
    "Ajamer",
    "Hindon",
    "madhopur",
    "Karoli",
    "Bikaner",
    "udaypur",
    "Jhansi",
  ];
  String city = "SelectCity";
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 19, right: 13, left: 13, bottom: 50),
      child: SizedBox(
        height: 70,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              customDropdownButton(
                  city,
                  selectcity.map((items) {
                    return DropdownMenuItem(
                        enabled: true, value: items, child: Text(items));
                  }).toList(), ((value) {
                setState(() {
                  city = value.toString();
                });
              })),
              customtext('Krishi Nagar A, Taru Chhaya Nagar,Jaipur',
                  Colors.black, 13, FontWeight.normal, FontStyle.normal)
            ]),
            Container(
              height: 45,
              width: 45,
              decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                      image: AssetImage('assets/Images/letter-m.png'))),
            )
          ],
        ),
      ),
    );
  }
}
