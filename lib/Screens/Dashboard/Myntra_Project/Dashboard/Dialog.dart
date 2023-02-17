import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

String image = "";

class Dialog1 extends StatefulWidget {
  const Dialog1({super.key});

  @override
  State<Dialog1> createState() => _Dialog1State();
}

class _Dialog1State extends State<Dialog1> {
  File? imageFile;
  var h, w;
  @override
  Widget build(BuildContext context) {
    h = MediaQuery.of(context).size.height;
    w = MediaQuery.of(context).size.width;
    return Center(
      child: Container(
          height: 450,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
          width: 250,
          child: Column(
            children: [
              imageFile == null
                  ? AlertDialog(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15)),
                      title: const Text("Image from"),
                      content: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          InkWell(
                            onTap: () {
                              _getFromGallery();
                            },
                            child: const Text(
                              "Gallery",
                              style: TextStyle(
                                  fontSize: 18, color: Color(0xff000000)),
                            ),
                          ),
                          SizedBox(
                            height: h * 0.0125,
                          ),
                          InkWell(
                            onTap: () {
                              _getFromCamera();
                            },
                            child: const Text(
                              "Camera",
                              style: TextStyle(
                                  fontSize: 18, color: Color(0xff000000)),
                            ),
                          ),
                          SizedBox(
                            height: h * 0.025,
                          ),
                          Align(
                            alignment: Alignment.bottomRight,
                            child: InkWell(
                              onTap: () {
                                Navigator.pop(context);
                                ;
                              },
                              child: const Text(
                                "Cancel",
                                style: TextStyle(
                                    fontSize: 18, color: Color(0xff59B8BE)),
                              ),
                            ),
                          ),
                        ],
                      ))
                  : SizedBox(
                      height: 355,
                      child: Scaffold(
                        body: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10)),
                          child: Column(
                            children: [
                              Image.file(
                                imageFile!,
                                height: 300,
                                width: 250,
                                fit: BoxFit.fitWidth,
                              ),
                              const SizedBox(
                                height: 30,
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 10, right: 10),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    InkWell(
                                      onTap: () {
                                        Navigator.pop(context);
                                        showDialog(
                                          barrierDismissible: false,
                                          context: context,
                                          builder: (context) => const Dialog1(),
                                        );
                                        setState(() {});
                                      },
                                      child: const Text(
                                        "Change Image",
                                        style: TextStyle(
                                            fontSize: 18,
                                            color: Color(0xff59B8BE)),
                                      ),
                                    ),
                                    InkWell(
                                      onTap: () {
                                        setState(() {
                                          image == imageFile;
                                        });
                                      },
                                      child: const Text(
                                        "Save",
                                        style: TextStyle(
                                            fontSize: 18,
                                            color: Color(0xff59B8BE)),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
            ],
          )),
    );
  }

  /// Get from gallery
  _getFromGallery() async {
    PickedFile? pickedFile = await ImagePicker().getImage(
      source: ImageSource.gallery,
      maxWidth: 1800,
      maxHeight: 1800,
    );
    if (pickedFile != null) {
      setState(() {
        imageFile = File(pickedFile.path);
      });
    }
  }

  /// Get from Camera
  _getFromCamera() async {
    PickedFile? pickedFile = await ImagePicker().getImage(
      source: ImageSource.camera,
      maxWidth: 1800,
      maxHeight: 1800,
    );
    if (pickedFile != null) {
      setState(() {
        imageFile = File(pickedFile.path);
      });
    }
  }
}
