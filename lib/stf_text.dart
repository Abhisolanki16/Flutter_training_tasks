import 'package:flutter/material.dart';

class STFText extends StatefulWidget {
  const STFText({super.key});

  @override
  State<STFText> createState() => _STFTextState();
}

class _STFTextState extends State<STFText> {
  String text = 'World';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Center(
              child: Text(
            "Hello $text :) ",
            style: const TextStyle(fontSize: 30),
          )),
          ElevatedButton(
              onPressed: () {
                if (text == 'Abhinav') {
                  setState(() {
                    text = 'World';
                  });
                } else {
                  setState(() {
                    text = 'Abhinav';
                  });
                }
              },
              child: const Text("Click here"))
        ],
      ),
    );
  }
}
