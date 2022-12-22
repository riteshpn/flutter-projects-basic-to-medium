import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/BasicFlut/ggg.dart';
import 'package:flutter_application_1/BasicFlut/overflow.dart';
import 'package:flutter_application_1/BasicFlut/snow.dart';
import 'package:flutter_application_1/BasicFlut/stack.dart';
import 'package:flutter_application_1/BasicFlut/text1.dart';
import 'package:flutter_application_1/Wheater/Wheater.dart';
import 'package:flutter_application_1/aba.dart';
import 'package:flutter_application_1/bar.dart';
import 'package:flutter_application_1/expense/transaction1.dart';
import 'package:flutter_application_1/new.dart';
import 'package:flutter_application_1/pages/allbasic.dart';
import 'package:flutter_application_1/pages/baic.dart';
//import 'package:flutter_application_1/pages/drawer.dart';
import 'package:flutter_application_1/pages/home.dart';
import 'package:flutter_application_1/pages/home_page.dart';
import 'package:flutter_application_1/rpn/Navigation.dart';
import 'package:flutter_application_1/screen1.dart';
import 'package:flutter_application_1/text.dart';
import 'package:flutter_application_1/textfield.dart';
import 'package:flutter_application_1/uiwallet/atm/atm.dart';
import 'package:flutter_application_1/uiwallet/wallet.dart';
import 'package:flutter_application_1/whatspp/whatsapp.dart';

void main() {
  runApp(
    MaterialApp(
        title: 'Navigation Basics',
        home: Atm(),
        debugShowCheckedModeBanner: false),
  );
}

class myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "my app",
      home: Scaffold(
        appBar: AppBar(
          title: const Text("rpn"),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 40,
            vertical: 40,
          ),
          child: Column(
            children: [
              const Center(
                child: Text(
                  "Sign Up",
                  style: TextStyle(fontSize: 40.0, color: Colors.black),
                ),
              ),
              getTextFiled("Username"),
              getTextFiled("Email"),
              getTextFiled("password"),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Already a member"),
                  TextButton(
                      onPressed: () {
                        debugPrint("User clicked login btn");
                      },
                      child: const Text("Log in"))
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(40.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 200.0,
                      height: 50.0,
                      child: ElevatedButton(
                        child: const Text('Sign up'),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: ((context) => const LoginForm())));
                        },
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
