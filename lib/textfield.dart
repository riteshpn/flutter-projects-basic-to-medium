import 'package:flutter/material.dart';

class textfield extends StatefulWidget {
  const textfield({super.key});

  @override
  State<textfield> createState() => _textfieldState();
}

class _textfieldState extends State<textfield> {
  bool _secureText = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Text field",
        ),
        leading: Icon(Icons.adb_sharp),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 10,
          vertical: 10,
        ),
        child: Column(
          children: [
            TextFormField(
              decoration: InputDecoration(
                hintText: "Enter Your Name",
                labelText: "name",
                hintStyle: TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                ),
                border: OutlineInputBorder(),
                fillColor: Colors.grey,
                filled: true,
              ),
              obscureText: false,
              maxLength: 30,
              maxLines: 1,
            ),
            TextFormField(
              decoration: InputDecoration(
                hintText: "Detalied Description",
                labelText: "Description",
                hintStyle: TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                ),
                border: UnderlineInputBorder(),
              ),
              obscureText: false,
              maxLength: 30,
              maxLines: 3,
            ),
            SizedBox(
              height: 10,
            ),
            TextFormField(
              decoration: InputDecoration(
                hintText: "Password",
                labelText: "Password",
                hintStyle: TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                ),
                border: OutlineInputBorder(),
                suffixIcon: IconButton(
                    icon: Icon(
                        _secureText ? Icons.remove_red_eye : Icons.security),
                    onPressed: () {
                      setState(() {
                        _secureText = !_secureText;
                      });
                    }),
              ),
              obscureText: true,
            ),
            SizedBox(
              height: 20,
            ),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  print('botton press');
                },
                child: Text("wwe"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
