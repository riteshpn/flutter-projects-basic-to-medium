import 'dart:ui';

import 'package:flutter/material.dart';

class Wheather extends StatefulWidget {
  const Wheather({super.key});

  @override
  State<Wheather> createState() => _WheatherState();
}

class _WheatherState extends State<Wheather> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Stack(
            children: <Widget>[
              Container(
                height: 300,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(
                            'https://tse4.mm.bing.net/th?id=OIP.XaQSxVHgILFUR3tD_b_vfAHaEo&pid=Api&P=0'),
                        fit: BoxFit.cover)),
              ),
              Container(
                margin: EdgeInsets.only(top: 30, left: 430),
                child: const Icon(
                  Icons.keyboard_voice,
                  size: 35,
                  color: Colors.white,
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 280, left: 80),
                height: 50,
                width: 300,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: const Color.fromARGB(255, 24, 24, 24)),
                child: Row(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Icon(
                        Icons.wb_cloudy,
                        color: Colors.lightBlueAccent.withOpacity(0.9),
                        size: 40,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 25, top: 5),
                      child: Column(
                        children: const <Widget>[
                          Text(
                            'It\'s Now 32deg F',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                                color: Colors.white),
                          ),
                          Text(
                            'In Sansarpur Jalandhar',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.grey),
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      width: 25,
                    ),
                    const Icon(
                      Icons.navigation,
                      color: Colors.blue,
                      size: 30,
                    )
                  ],
                ),
              )
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            //color: Colors.amber,
            width: 450,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                  height: 60,
                  width: 60,
                  decoration: BoxDecoration(
                    color: Colors.black87.withOpacity(0.2),
                    borderRadius: BorderRadius.circular(60),
                  ),
                  child: const Icon(
                    Icons.my_location,
                    color: Colors.blueAccent,
                    size: 30,
                  ),
                ),
                Container(
                  height: 60,
                  width: 60,
                  decoration: BoxDecoration(
                    color: Colors.black87.withOpacity(0.2),
                    borderRadius: BorderRadius.circular(60),
                  ),
                  child: const Icon(
                    Icons.calendar_today,
                    color: Colors.blueAccent,
                    size: 30,
                  ),
                ),
                Container(
                  height: 60,
                  width: 60,
                  decoration: BoxDecoration(
                    color: Colors.black87.withOpacity(0.2),
                    borderRadius: BorderRadius.circular(60),
                  ),
                  child: const Icon(
                    Icons.music_note,
                    color: Colors.blueAccent,
                    size: 30,
                  ),
                ),
                Container(
                  height: 60,
                  width: 60,
                  decoration: BoxDecoration(
                    color: Colors.black87.withOpacity(0.2),
                    borderRadius: BorderRadius.circular(60),
                  ),
                  child: const Icon(
                    Icons.event_note,
                    color: Colors.blueAccent,
                    size: 30,
                  ),
                ),
              ],
            ),
          ),
          Container(
            //color: Colors.amber,
            margin: EdgeInsets.only(top: 30, right: 230),
            child: const Text('Thursday,Dec 1',
                style: TextStyle(
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                  color: Color.fromARGB(255, 41, 41, 41),
                )
                // style: Theme.of(context)
                //  .textTheme
                //   .displaySmall
                //   ?.copyWith(color: Colors.black),
                ),
          ),
          Container(
            margin: EdgeInsets.only(top: 20, right: 150),
            child: Text(
              'The Time is 12:00 and you have 20% battery left\n cloudy weather and slightly cool temperture',
              style: Theme.of(context)
                  .textTheme
                  .bodyText1
                  ?.copyWith(color: Colors.black),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 30),
            // color: Colors.amber,
            width: 500,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                  height: 50,
                  width: 120,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Colors.blueAccent,
                  ),
                  child: const Center(
                    child: Text(
                      'call',
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                ),
                Container(
                  height: 50,
                  width: 120,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Colors.blueAccent,
                  ),
                  child: const Center(
                    child: Text(
                      'Text',
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                ),
                Container(
                  height: 50,
                  width: 120,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Colors.blueAccent,
                  ),
                  child: const Center(
                    child: Text(
                      'Email',
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
