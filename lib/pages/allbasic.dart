import 'package:flutter/material.dart';

class allbasi extends StatefulWidget {
  const allbasi({super.key});

  @override
  State<allbasi> createState() => _allbasiState();
}

class _allbasiState extends State<allbasi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 30,
        title: const Text('awesome app'),
      ),
      body: Center(
        child: Container(
          height: 100,
          width: 300,
          color: Colors.blue,
        ),
      ),
      drawer: const Drawer(
        backgroundColor: Colors.grey,
        elevation: 5,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.edit),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(20),
            bottomRight: Radius.circular(20),
          ),
        ),
        backgroundColor: Colors.blueGrey,
        // mini: true,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.miniEndFloat,
    );
  }
}
