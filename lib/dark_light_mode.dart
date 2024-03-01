import 'package:flutter/material.dart';

class DarkLight extends StatefulWidget {
  const DarkLight({super.key});

  @override
  State<DarkLight> createState() => _DarkLightState();
}

class _DarkLightState extends State<DarkLight> {
  //ThemeMode _themeMode = ThemeMode.system;
  bool _isDarkMode = false;

  void _toggleTheme() {
    setState(() {
      _isDarkMode = !_isDarkMode;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: _isDarkMode ? Colors.black : Colors.orange,
        title: const Text('Change Theme'),
        centerTitle: true,
      ),
      body: Center(
          child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: _isDarkMode ? Colors.black : Colors.orange),
            child: IconButton(
              icon: const Icon(Icons.dark_mode),
              onPressed: () {
                setState(() {
                  _isDarkMode = true;
                });
              },
              color: Colors.white,
            ),
          ),
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: !_isDarkMode ? Colors.black : Colors.orange),
            child: IconButton(
              icon: const Icon(Icons.light_mode),
              onPressed: () {
                setState(() {
                  _isDarkMode = false;
                });
              },
              color: Colors.white,
            ),
          ),
        ],
      )),
    );
  }
}
