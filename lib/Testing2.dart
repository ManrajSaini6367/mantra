
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class Imagepicker extends StatefulWidget {
  @override
  _ImagepickerState createState() => _ImagepickerState();
}
class _ImagepickerState extends State<Imagepicker> {
 File ?imageFile;
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
                  radius: 50,
                  backgroundColor: Colors.white,
                  child: CircleAvatar(radius: 47,child: Image.file(imageFile!),
                  ),
                ),
              ),
            )
          ]),
          Center(
            child: MaterialButton(
              minWidth: 115,
              height: 32,
              color: Colors.black,
              onPressed: () {
                _getFromGallery;
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
          SizedBox(height: h * 0.005),
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
          SizedBox(height: h * 0.004),
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
          SizedBox(height: h * 0.004),
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
          SizedBox(height: h * 0.004),
        ],
      ),
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

 
  customtext(String s, Color white, int i, FontWeight normal, FontStyle normal2) {}
}