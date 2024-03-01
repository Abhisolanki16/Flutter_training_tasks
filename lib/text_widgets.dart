import 'package:flutter/material.dart';

class TextWidgets extends StatelessWidget {
  const TextWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        foregroundColor: Colors.white,
        centerTitle: true,
        title: Text("MyApp"),
      ),
      body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
              padding:
                  EdgeInsets.only(top: 10, bottom: 10, right: 30, left: 30),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.blueAccent),
              child: Text(
                "Text 1",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontWeight: FontWeight.bold),
              )),
          Container(
              padding:
                  EdgeInsets.only(top: 10, bottom: 10, right: 30, left: 30),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.blueAccent),
              child: Text("Text 2",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.bold))),
          Container(
              padding:
                  EdgeInsets.only(top: 10, bottom: 10, right: 30, left: 30),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.blueAccent),
              child: Text(
                "Text 3",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontWeight: FontWeight.bold),
              )),
          Container(
              padding:
                  EdgeInsets.only(top: 10, bottom: 10, right: 30, left: 30),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.blueAccent),
              child: Text("Text 4",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.bold))),
          Container(
              padding:
                  EdgeInsets.only(top: 10, bottom: 10, right: 30, left: 30),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.blueAccent),
              child: Text("Text 5",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.bold))),
        ],
      )),
    );
  }
}
