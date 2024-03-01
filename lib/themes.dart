import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ChangeThemes extends StatefulWidget {
  bool isDark = false;

  ChangeThemes({super.key, required this.isDark});

  @override
  State<ChangeThemes> createState() => _ChangeThemesState();
}

class _ChangeThemesState extends State<ChangeThemes> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "AppBar",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: widget.isDark ? Colors.grey : Colors.orange,
      ),
      body: Center(
          child: Container(
        margin: const EdgeInsets.all(20),
        height: double.infinity,
        width: double.infinity,
        color: widget.isDark ? Colors.grey.shade700 : Colors.orangeAccent,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
              color: widget.isDark ? Colors.white  : Colors.black,
              icon: const Icon(Icons.dark_mode),
              onPressed: () {
                setState(() {
                  widget.isDark = true;
                });
              },
            ),
            IconButton(
              color:widget.isDark ? Colors.white  : Colors.black,
              icon: const Icon(Icons.light_mode),
              onPressed: () {
                setState(() {
                  widget.isDark = false;
                });
              },
            ),
          ],
        ),
      )),
    );
  }
}
