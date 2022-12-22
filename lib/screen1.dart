import 'package:flutter/material.dart';

class screen1 extends StatefulWidget {
  const screen1({super.key});

  @override
  State<screen1> createState() => _screen1State();
}

class _screen1State extends State<screen1> {
  int num = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        leading: const Icon(Icons.arrow_back),
        title: const Text('fluterr'),
        centerTitle: true,
        actions: const [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(Icons.refresh),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(Icons.add_chart),
          ),
        ],
      ),
      body: Row(
        children: [
          Center(
            child: ElevatedButton(
                onPressed: (() {
                  setState(() {
                    num += 1;
                  });
                }),
                child: Text('$num')),
          ),
          Text("ggggg")
        ],
      ),
    );
  }
}
