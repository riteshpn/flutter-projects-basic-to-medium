import 'package:flutter/material.dart';

class BarDemo extends StatefulWidget {
  const BarDemo({super.key});

  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<BarDemo> {
  List<String> _products = ['Laptop'];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('First app')),
        body: Container(
          color: Colors.amber,
          height: 250,
          width: 250,
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomRaisedButton(),
                CustomRaisedButton(),
                CustomRaisedButton(),
                Spacer()
              ]),
        ),
      ),
    );
  }
}

Widget CustomRaisedButton() {
  return TextButton(
    onPressed: () {},
    child: Padding(
      padding: const EdgeInsets.all(10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Container(
            height: 55,
            color: Colors.deepPurple,
            child: const Icon(
              Icons.settings,
              color: Colors.white,
            ),
          ),
          const Text(
            'Settings',
            style: TextStyle(
              fontSize: 25,
            ),
          ),
        ],
      ),
    ),
  );
}
