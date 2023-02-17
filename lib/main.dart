import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'Screens/Dashboard/Myntra_Project/Dashboard/29_Chat_Intake.dart';
import 'Screens/Dashboard/Myntra_Project/Dashboard/30_Chat.dart';
import 'Screens/Dashboard/Myntra_Project/Dashboard/33_Astro_Live.dart';
import 'Screens/Dashboard/Myntra_Project/Dashboard/38_Recharge_History.dart';
import 'Screens/Dashboard/Myntra_Project/Dashboard/7_Home.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarIconBrightness: Brightness.dark,
    statusBarColor: Colors.transparent,
  ));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Food App',
        color: Colors.amber,
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const Chat_Intake());
  }
}
