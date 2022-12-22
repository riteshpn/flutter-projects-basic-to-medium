import 'package:flutter/material.dart';

class basic extends StatefulWidget {
  const basic({super.key});

  @override
  State<basic> createState() => _basicState();
}

class _basicState extends State<basic> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink,
        leading: const Icon(Icons.arrow_back),
        title: const Text("basic"),
        centerTitle: true,
        actions: const [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(Icons.add_a_photo_outlined),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(Icons.facebook_outlined),
          ),
        ],
      ),
      body: Container(
        color: Colors.blueAccent,
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                  child: Image.network(
                    'https://tse3.mm.bing.net/th?id=OIP.j_VxyFhMx9bpeUX2lCyTgQHaE4&pid=Api&P=0',
                    height: 200,
                    width: 200,
                  ),
                ),
                Expanded(
                  flex: 4,
                  child: Image.network(
                    'https://tse4.mm.bing.net/th?id=OIP.LTwAsUioS1CO97gdQ3r7eAHaEo&pid=Api&P=0',
                    // height: 200,
                    width: 200,
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Image.network(
                    'https://tse2.mm.bing.net/th?id=OIP.3FiY2oU_N9PQCPHEnrO-gwHaEK&pid=Api&P=0',
                    // height: 200,
                    width: 200,
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.star),
                Icon(Icons.star),
                Icon(Icons.star_border),
                Icon(Icons.star_border),
                Icon(Icons.star_border),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Icon(
                  Icons.phone_android,
                  size: 50.0,
                ),
                Icon(
                  Icons.facebook_sharp,
                  size: 50.0,
                ),
                Icon(
                  Icons.youtube_searched_for,
                  size: 50.0,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
