import 'package:flutter/material.dart';

class Stack1 extends StatefulWidget {
  const Stack1({super.key});

  @override
  State<Stack1> createState() => _StackState();
}

class _StackState extends State<Stack1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Stack(
          alignment: Alignment.center, // in aligment is used only
          children: [
            Container(
              height: 300,
              width: 300,
              color: Colors.green,
            ),
            Container(
              height: 200,
              width: 200,
              color: Colors.red,
            ),
            Container(
              height: 100,
              width: 100,
              color: Colors.blue,
            ),
            Container(
              height: 50,
              width: 50,
              color: Colors.black,
            ),
          ],
        ),
      ),
    );
  }
}
