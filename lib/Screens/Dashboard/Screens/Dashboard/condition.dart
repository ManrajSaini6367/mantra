import 'package:flutter/material.dart';

class Condition extends StatefulWidget {
  const Condition({super.key});

  @override
  State<Condition> createState() => _ConditionState();
}

class _ConditionState extends State<Condition> {
  bool ind = false;
  bool tap = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.fromLTRB(10, 100, 10, 0),
        child: Column(
          children: [
            ElevatedButton(
                onPressed: () {
                  ind = !ind;
                  setState(() {});
                },
                style: ElevatedButton.styleFrom(
                    backgroundColor: tap == false ? Colors.black : Colors.red),
                child: const Text(
                  "Elevated1",
                  style: TextStyle(fontSize: 20, color: Colors.green),
                )),
            const SizedBox(height: 20),
            ElevatedButton(
                onPressed: () {
                  tap = !tap;

                  setState(() {});
                },
                style: ElevatedButton.styleFrom(
                    backgroundColor: ind == true ? Colors.amber : Colors.blue),
                child: const Text(
                  "Elevated2",
                  style: TextStyle(fontSize: 20, color: Colors.green),
                )),
            const Text(
              "Text1",
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic,
                  color: Colors.amber),
            )
          ],
        ),
      ),
    );
  }
}
