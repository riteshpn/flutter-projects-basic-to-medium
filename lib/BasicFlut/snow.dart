import 'package:flutter/material.dart';

class Snow extends StatefulWidget {
  const Snow({super.key});

  @override
  State<Snow> createState() => _SnowState();
}

class _SnowState extends State<Snow> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        // lisview is used bcz allwidget vertically assign.
        children: [
          Container(
            // 1st widget is container ismy image hai
            height: 300, width: double.infinity,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(30),
                bottomRight: Radius.circular(30),
                topLeft: Radius.circular(30),
                topRight: Radius.circular(30),
              ),
              image: DecorationImage(
                  image: AssetImage('images/shimla.png'), fit: BoxFit.cover),
            ),
            child: Padding(
                padding: EdgeInsets.all(18),
                child: Icon(
                  Icons.arrow_back_ios,
                  color: Colors.white,
                )),
            alignment: Alignment.topLeft,
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  'White Snow Valley',
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.blue),
                ),
                Icon(
                  Icons.favorite_border,
                  color: Colors.red,
                  size: 28,
                )
              ],
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: const [
                Icon(
                  Icons.location_on,
                  color: Colors.orange,
                  size: 15,
                ),
                Text(
                  'Shimla, Himachal Pardesh',
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w300,
                      color: Colors.black),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                children: const [
                  Icon(
                    Icons.star_border,
                    color: Colors.orange,
                    size: 25,
                  ),
                  Text(
                    'Rating',
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                  Text(
                    '4.2(3.2k)',
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w300,
                        color: Colors.black),
                  ),
                ],
              ),
              Column(
                children: const [
                  Icon(
                    Icons.social_distance_outlined,
                    color: Colors.orange,
                    size: 25,
                  ),
                  Text(
                    'Distance',
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                  Text(
                    '300Km',
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w300,
                        color: Colors.black),
                  ),
                ],
              ),
              Column(
                children: const [
                  Icon(
                    Icons.restaurant,
                    color: Colors.orange,
                    size: 25,
                  ),
                  Text(
                    'Restaurnt',
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                  Text(
                    '106 avail',
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w300,
                        color: Colors.black),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(
            height: 5,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Text(
              'The best time to visit Shimla is between March to June when the weather remains pleasant and the temperature ranges from 15°C to 30°C.The best time to experience Snowfall in Shimla is during winters months-November to February.This time is ideal for snow-activities like skiing and exploring the snow-covered surroundings.Tourism thrives in Shimla in all the seasons other than the monsoons which begin in July and last till September.',
              style: TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.w300,
                  color: Colors.black.withOpacity(0.6)),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 150),
            child: Container(
              height: 50,
              decoration: BoxDecoration(
                  color: Colors.black, borderRadius: BorderRadius.circular(12)),
              child: const Center(
                child: Text(
                  'Book My Trip',
                  style: TextStyle(
                      fontSize: 25,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
