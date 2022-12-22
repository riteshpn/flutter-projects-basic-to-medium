// ignore: unused_import

import 'package:flutter/material.dart';

class TextDemo extends StatelessWidget {
  const TextDemo({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    // ignore: prefer_const_constructors
    return Scaffold(
      appBar: AppBar(title: const Text('register')),
      body: Column(
        children: [
          Container(
            color: Colors.amber,
            child: const Text('image'),
          ),
          Row(
            children: [],
          )
        ],
      ),
    );
  }
}
