import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Navigation Bar', style: TextStyle(fontSize: 25)),
      ),
      body: const Center(
        child: Text(
          'My Page',
          style: TextStyle(fontSize: 30),
        ),
      ),
    );
  }
}
