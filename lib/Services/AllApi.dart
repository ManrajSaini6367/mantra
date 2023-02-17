// ignore_for_file: avoid_print

import 'dart:convert';
import 'package:food_app/Services/ApiClient.dart';
import 'package:http/http.dart' as http;

String? loginmsg;
var headers = {
  'Authorization': 'Bearer' +
      'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwczovL2FwcGljc29mdHdhcmVzLmluL2RldmVsb3BtZW50L3BldGFwcC9hcGkvdmVyaWZ5b3RwIiwiaWF0IjoxNjc0OTA1OTQ3LCJleHAiOjIyNzQ5MDU4ODcsIm5iZiI6MTY3NDkwNTk0NywianRpIjoiY21ZQjBiZ25raUppckxTVSIsInN1YiI6IjE1MCIsInBydiI6IjIzYmQ1Yzg5NDlmNjAwYWRiMzllNzAxYzQwMDg3MmRiN2E1OTc2ZjcifQ.0teMd9bo38LjH66Qn2m4D9W6f64mmq2trDyuNY_UpdM'
  // "Content-Type": "application/json"
};

// vaccinationApi
Future vaccinationApi() async {
  try {
    var response = await http.get(
        Uri.parse(
          vaccination,
        ),
        headers: headers);
    print(response.statusCode);
    if (response.statusCode == 200) {
      final data = json.decode(response.body);
      if (data["status"]) {
        print('data------>' + data.toString());
        print('message------>' + data['message'].toString());
      }
    }
  } catch (e) {
    print(e.toString());
  }
}

// OtpApi
Future otpApi( var mobileNumber) async {
  try {
    var response = await http.post(Uri.parse(sendOTPUrl),
        body: {"mobileNo": mobileNumber, "lattitude": "", "longitude": ""});
    if (response.statusCode == 200) {
      final data = json.decode(response.body);
      if (data["status"]) {
        print('data------>' + data.toString());
        print('message------>' + data['message'].toString());
      }
    }
  } catch (e) {
    print(e.toString());
  }
}
