import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class WhatsApp extends StatefulWidget {
  const WhatsApp({super.key});

  @override
  State<WhatsApp> createState() => _WhatsAppState();
}

class _WhatsAppState extends State<WhatsApp> {
  var Phone = "";
  var text = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("WhatsApp Title Direct"),
        backgroundColor: Color.fromARGB(255, 3, 127, 7),
        leading: const Icon(Icons.whatsapp),
        centerTitle: true,
      ),
      body: Center(
          child: Container(
        padding: EdgeInsets.only(left: 30, right: 30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              onChanged: (value) {
                Phone = value;
              },
              decoration: const InputDecoration(
                  hintText: "Phone", enabledBorder: OutlineInputBorder()),
            ),
            const SizedBox(
              height: 20,
            ),
            TextField(
              onChanged: (value) {
                text = value;
              },
              decoration: const InputDecoration(
                  hintText: "Messages", enabledBorder: OutlineInputBorder()),
            ),
            ElevatedButton(
              onPressed: (() async {
                // https://wa.me/1XXXXXXXXXX?text=I'm%20interested%20in%20your%20car%20for%20sale
                final Uri url =
                    Uri.parse(' https://wa.me/$Phone?$text'); //''' link
                if (!await launchUrl(url)) {
                  throw 'Could not launch $url';
                }
              }),
              child: const Text('Send'),
            ),
          ],
        ),
      )),
    );
  }
}
