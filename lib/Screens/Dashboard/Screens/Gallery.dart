import 'dart:io';

import 'package:flutter/material.dart';
import 'package:food_app/Resueable/Utils.dart';
import 'package:image_picker/image_picker.dart';

class Gallery extends StatefulWidget {
  const Gallery({super.key});

  @override
  State<Gallery> createState() => _GalleryState();
}

class _GalleryState extends State<Gallery> {
  TextEditingController Editcontroller = TextEditingController();
  var w, h;

  @override
  Widget build(BuildContext context) {
    w = MediaQuery.of(context).size.width;
    h = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Stack(children: [
            Container(
              height: h * 0.221,
              width: w * 1,
              decoration: BoxDecoration(color: Colors.red.withOpacity(0.8)),
              child: Column(
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.only(right: 13, left: 13, top: 45),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Icon(
                          Icons.arrow_back,
                          color: Colors.white,
                        ),
                        customtext("Profile", Colors.white, 20,
                            FontWeight.normal, FontStyle.normal),
                        const Icon(
                          Icons.notifications,
                          color: Colors.white,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Center(
              child: Padding(
                  padding: const EdgeInsets.only(top: 100),
                  child: CircleAvatar(
                    radius: 54,
                    backgroundColor: Colors.white,
                    child: CircleAvatar(
                      radius: 50,
                      backgroundImage: FileImage(
                        imageFile,
                      ),
                      backgroundColor: Colors.white,
                    ),
                  )),
            )
          ]),
          Center(
            child: MaterialButton(
              minWidth: 115,
              height: 32,
              color: Colors.black,
              onPressed: () {
                _getFromGallery();
              },
              child: customtext("Edit Profile", Colors.white, 14,
                  FontWeight.normal, FontStyle.normal),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8)),
            ),
          ),
          SizedBox(height: h * 0.035),
          Container(
              height: h * 0.04,
              width: w * 1,
              color: const Color.fromARGB(255, 224, 217, 217),
              child: Padding(
                padding: const EdgeInsets.only(right: 13, left: 13, top: 6),
                child: customtext("Mini Headline", Colors.black, 16,
                    FontWeight.normal, FontStyle.normal),
              )),
          SizedBox(height: h * 0.006),
          Padding(
            padding: const EdgeInsets.only(right: 13, left: 13),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                customtext("Popular", Colors.black, 15, FontWeight.normal,
                    FontStyle.normal),
                const Icon(Icons.arrow_right)
              ],
            ),
          ),
          SizedBox(height: h * 0.005),
          Padding(
            padding: const EdgeInsets.only(right: 13, left: 13),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                customtext("Trending", Colors.black, 15, FontWeight.normal,
                    FontStyle.normal),
                const Icon(Icons.arrow_right)
              ],
            ),
          ),
          SizedBox(height: h * 0.005),
          Padding(
            padding: const EdgeInsets.only(right: 13, left: 13),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                customtext("Today", Colors.black, 15, FontWeight.normal,
                    FontStyle.normal),
                const Icon(Icons.arrow_right)
              ],
            ),
          ),
          SizedBox(height: h * 0.005),
          Container(
              height: h * 0.04,
              width: w * 1,
              color: const Color.fromARGB(255, 224, 217, 217),
              child: Padding(
                padding: const EdgeInsets.only(right: 13, left: 13, top: 6),
                child: customtext("Content", Colors.black, 16,
                    FontWeight.normal, FontStyle.normal),
              )),
          SizedBox(height: h * 0.006),
          Padding(
            padding: const EdgeInsets.only(right: 13, left: 13),
            child: Row(
              children: [
                const Icon(
                  Icons.favorite,
                  size: 20,
                ),
                customtext("Favourite", Colors.black, 15, FontWeight.normal,
                    FontStyle.normal),
              ],
            ),
          ),
          SizedBox(height: h * 0.005),
          Padding(
            padding: const EdgeInsets.only(right: 13, left: 13),
            child: Row(
              children: [
                const Icon(Icons.download, size: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    customtext("Download", Colors.black, 15, FontWeight.normal,
                        FontStyle.normal),
                    const Icon(Icons.arrow_right)
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: h * 0.005),
          Container(
              height: h * 0.04,
              width: w * 1,
              color: const Color.fromARGB(255, 224, 217, 217),
              child: Padding(
                padding: const EdgeInsets.only(right: 13, left: 13, top: 6),
                child: customtext("Preperences", Colors.black, 16,
                    FontWeight.normal, FontStyle.normal),
              )),
          SizedBox(height: h * 0.006),
          Padding(
            padding: const EdgeInsets.only(right: 13, left: 13),
            child: Row(
              children: [
                const Icon(Icons.language, size: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    customtext("Language", Colors.black, 15, FontWeight.normal,
                        FontStyle.normal),
                    const Icon(Icons.arrow_right)
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: h * 0.005),
          Padding(
            padding: const EdgeInsets.only(left: 13, right: 13),
            child: Row(
              children: [
                const Icon(Icons.dark_mode, size: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    customtext("Darkmode", Colors.black, 15, FontWeight.normal,
                        FontStyle.normal),
                    const Icon(Icons.arrow_right)
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: h * 0.005),
          Padding(
            padding: const EdgeInsets.only(right: 13, left: 13),
            child: Row(
              children: [
                const Icon(
                  Icons.wifi,
                  size: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    customtext("Only download via wifi", Colors.black, 15,
                        FontWeight.normal, FontStyle.normal),
                    const Icon(Icons.arrow_right)
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// Get from gallery
  File imageFile = File("assets/Images/Tide_image-removebg-preview.png");
  _getFromGallery() async {
    PickedFile? pickedFile = await ImagePicker().getImage(
      source: ImageSource.gallery,
    );
    if (pickedFile != null) {
      setState(() {
        imageFile = File(pickedFile.path);
      });
    }
  }
}
