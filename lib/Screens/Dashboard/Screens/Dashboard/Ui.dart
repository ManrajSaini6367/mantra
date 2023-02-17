// ignore_for_file: prefer_typing_uninitialized_variables, prefer_interpolation_to_compose_strings, avoid_print

import 'package:flutter/material.dart';
import 'package:food_app/Resueable/Utils.dart';
import 'package:food_app/Services/AllApi.dart';

class Ui extends StatefulWidget {
  const Ui({super.key});

  @override
  State<Ui> createState() => _UiState();
}

class _UiState extends State<Ui> {
  var data;

  @override
  void initState() {
    super.initState();
    vaccinationApi().then((value) {
      data = value;
      setState(() {});
      print("------>" + data.toString());
    });
  }

  var h, w;
  @override
  Widget build(BuildContext context) {
    h = MediaQuery.of(context).size.height;
    w = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(),
      body: Column(
        children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.all(12),
              child: Card(
                  child: Container(
                      child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        customtext('ID :', Colors.black, 18, FontWeight.w500,
                            FontStyle.normal),
                        Row(
                          children: [
                            GestureDetector(
                              onTap: () {},
                              child: const CircleAvatar(
                                radius: 18,
                                child: Icon(Icons.edit),
                              ),
                            ),
                            SizedBox(
                              width: w * 0.03,
                            ),
                            InkWell(
                              onTap: () {},
                              child: const CircleAvatar(
                                radius: 18,
                                child: Icon(Icons.delete),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                    SizedBox(height: h * 0.015),
                    customtext('Name :', Colors.black, 18, FontWeight.w500,
                        FontStyle.normal),
                    SizedBox(height: h * 0.02),
                    customtext('Status :', Colors.black, 18, FontWeight.w500,
                        FontStyle.normal),
                  ],
                ),
              ))),
            ),
          ),
        ],
      ),
    );
  }
}
