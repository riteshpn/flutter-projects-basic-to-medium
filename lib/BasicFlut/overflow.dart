import 'package:flutter/material.dart';

class OverFlow extends StatefulWidget {
  const OverFlow({super.key});

  @override
  State<OverFlow> createState() => _OverFlowState();
}

class _OverFlowState extends State<OverFlow> {
  int num = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: ElevatedButton(
          onPressed: (() {
            setState(() {
              num += 1;
            });
          }),
          child: Text('$num')),
    ));
  }
}
