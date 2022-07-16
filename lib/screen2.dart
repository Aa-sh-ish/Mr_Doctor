import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

class Screeen2 extends StatelessWidget {
  const Screeen2({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              ColorBox(Colors.red),
              ColorBox(Colors.orange),
              ColorBox(Colors.yellow),
              ColorBox(Colors.green),
              ColorBox(Colors.teal),
              ColorBox(Colors.blue),
              ColorBox(Colors.purple),
            ],
          ),
        ),
      ),
    );
  }
}

class ColorBox extends StatelessWidget {
  ColorBox(this.color);
  var color;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        print("Tapped");
      },
      child: Container(
        height: 200,
        width: 200,
        color: color,
      ),
    );
  }
}
