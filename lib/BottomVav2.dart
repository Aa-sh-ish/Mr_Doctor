import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:health/screen1.dart';
import 'package:health/screen2.dart';
import 'package:health/screen3.dart';

class BottonNav2 extends StatefulWidget {
  const BottonNav2({Key? key}) : super(key: key);

  @override
  State<BottonNav2> createState() => _BottonNav2State();
}

class _BottonNav2State extends State<BottonNav2> {
  int _currentState = 0;

  var pages = [
    Screen1(),
    Screeen2(),
    Screen3(),
  ];

  void _onChange(int index) {
    setState(
      () {
        _currentState = index;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff2F80ED),
        title: Row(
          children: [
            ImageIcon(
              AssetImage(
                "assets/FYPlogo_suman-11 1.png",
              ),
            ),
            SizedBox(width: 50),
            Text(
              "See Your Doctors",
              style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 25,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: CurvedNavigationBar(
        buttonBackgroundColor: Colors.pink,
        backgroundColor: Colors.white,
        animationCurve: Curves.bounceOut,
        animationDuration: Duration(milliseconds: 1600),
        color: Color(0xff2F80ED),
        items: [
          Icon(Icons.home),
          Icon(Icons.add),
          Icon(Icons.person),
          //    Icon(Icons.settings),
        ],
        onTap: _onChange,
      ),
      body: SafeArea(
        child: pages[_currentState],
      ),
    );
  }
}
