import 'package:flutter/material.dart';

class NewDemo extends StatelessWidget {
  void onPressedButtonfuntion() {
    print("botton press by the user");
  }

  void ElevatedButton() {
    print("elevated button press");
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.pink,
          centerTitle: true,
          title: const Text("flutter"),
          leading: Icon(Icons.menu),
          // ignore: prefer_const_literals_to_create_immutables
          actions: [
            const Icon(Icons.notification_add_outlined),
          ],
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
                color: Colors.orange,
                padding: EdgeInsets.all(90),
                child: Icon(Icons.headphones)),
            Container(
                color: Colors.black,
                padding: EdgeInsets.all(25),
                child: Icon(Icons.headphones)),
            Container(
                color: Colors.green,
                padding: EdgeInsets.all(20),
                child: Icon(Icons.headphones)),
            Container(
                color: Colors.pink,
                padding: EdgeInsets.all(15),
                child: Icon(Icons.headphones)),
            Container(
                color: Colors.deepPurpleAccent,
                padding: EdgeInsets.all(10),
                child: Icon(Icons.headphones)),
          ],
        ),
        floatingActionButton:
            FloatingActionButton(onPressed: onPressedButtonfuntion),
      ),
    );
  }
}
