import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'Screens/Dashboard/Myntra_Project/Dashboard/29_Chat_Intake.dart';

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
