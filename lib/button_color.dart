import 'dart:math';

import 'package:flutter/material.dart';

class ButtonColorChange extends StatefulWidget {
  const ButtonColorChange({super.key});

  @override
  State<ButtonColorChange> createState() => _ButtonColorChangeState();
}

class _ButtonColorChangeState extends State<ButtonColorChange> {
  final List<Color> _colors = [
    Colors.red,
    Colors.blue,
    Colors.green,
    Colors.yellow,
    Colors.orange,
    Colors.purple,
  ];
  Color _currentColor = Colors.yellow;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: _currentColor,
        title: const Text(
          'Stateful Widget Demo',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            _changeColor();
          },
          style: ElevatedButton.styleFrom(backgroundColor: _currentColor),
          child: const Text(
            "Press Here",
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }

  void _changeColor() {
    setState(() {
      _currentColor = _colors[Random().nextInt(_colors.length)];
    });
  }
}
