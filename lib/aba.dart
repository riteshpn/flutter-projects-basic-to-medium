// ignore: unused_import
import 'package:flutter/material.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({
    super.key,
    this.color = const Color(0xFFFFE306),
    this.child,
  });

  final Color color;
  final Widget? child;

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("rpn"),
      ),
      body: Column(
        children: [
          const Center(
            child: Text(
              "Sign Up",
              style: TextStyle(fontSize: 40.0, color: Colors.black),
            ),
          ),
          getTextFiled("user id"),
          getTextFiled("password"),
          const Spacer()
        ],
      ),
    );
  }
}

Padding getTextFiled(String placeholder) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: TextField(
      decoration: InputDecoration(
        hintText: placeholder,
        enabledBorder: const UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.cyan),
        ),
        focusedBorder: const UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.cyan),
        ),
      ),
      style: const TextStyle(fontSize: 20),
    ),
  );
}
