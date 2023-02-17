import 'package:flutter/material.dart';

class CEO_Popup extends StatefulWidget {
  const CEO_Popup({super.key});

  @override
  State<CEO_Popup> createState() => _CEO_PopupState();
}

class _CEO_PopupState extends State<CEO_Popup> {
  var h, w;
  @override
  Widget build(BuildContext context) {
    h = MediaQuery.of(context).size.height;
    w = MediaQuery.of(context).size.width;
    return Container(
      height: h * 0.4,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: h * 0.0187),
          Padding(
            padding: const EdgeInsets.only(left: 13, right: 13),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(),
                const Text(
                  "CEO Connect",
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
          SizedBox(height: h * 0.025),
          const Padding(
            padding: EdgeInsets.only(left: 13, right: 13),
            child: Text(
              "Comments",
              style: TextStyle(
                fontSize: 17,
                color: Color(0xff000000),
              ),
            ),
          ),
          SizedBox(height: h * 0.00625),
          Padding(
            padding: const EdgeInsets.only(left: 13, right: 13),
            child: Container(
              width: w * 1,
              height: h * 0.136,
              decoration: BoxDecoration(
                  border: Border.all(color: const Color(0xff59B8BE)),
                  borderRadius: BorderRadius.circular(10)),
              child: const Padding(
                padding: EdgeInsets.all(6),
                child: Text(
                  "Massage",
                  style: TextStyle(fontSize: 17, color: Color(0xffA2A2A2)),
                ),
              ),
            ),
          ),
          SizedBox(height: h * 0.026),
          const Divider(
            color: Color(0xffD2D2D2),
            height: 1,
          ),
          SizedBox(height: h * 0.026),
          Padding(
            padding: const EdgeInsets.only(left: 13, right: 13),
            child: MaterialButton(
              onPressed: () {
                Navigator.pop(context);
              },
              shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10))),
              height: h * 0.0625,
              minWidth: w * 0.9972,
              color: const Color(0xff59B8BE),
              child: const Text(
                'Submit',
                style: TextStyle(fontSize: 16, color: Color(0xffFFFFFF)),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
