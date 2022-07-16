import 'package:flutter/material.dart';
import 'package:health/login.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Stack(
              children: [
                Positioned(
                  child: RotationTransition(
                    turns: new AlwaysStoppedAnimation(-0 / 360),
                    child: Image.asset(
                      "assets/Rectangle 2.png",
                      // height: 750,
                      // width: 1000,
                    ),
                  ),
                ),
                Image.asset(
                  "assets/Rectangle 1.png",
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20, top: 60),
                      child: Image.asset(
                        "assets/FYPlogo_suman-11 1.png",
                        height: 125,
                        width: 125,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 70,
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Column(
                    children: [
                      Text(
                        'Welcome To ',
                        style: TextStyle(
                            fontWeight: FontWeight.w700, fontSize: 30),
                      ),
                      Row(
                        children: [
                          Text(
                            "Mr.",
                            style: TextStyle(
                                fontWeight: FontWeight.w700, fontSize: 18),
                          ),
                          Text(
                            "Doctor",
                            style: TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize: 35,
                                color: Color(0xff2F80ED)),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 230),
                  child: Image.asset(
                    "assets/Rectangle 3.png",
                    //  height: 400,
                  ),
                ),
                Positioned(
                  top: 300,
                  left: 300,
                  child: OutlinedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => LoginPage()),
                      );
                    },
                    child: Text(
                      "Get Started",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 17,
                      ),
                    ),
                    style: OutlinedButton.styleFrom(
                      backgroundColor: Colors.white12,
                      primary: Colors.red,
                      fixedSize: Size(144, 60),
                      side: BorderSide(width: 3, color: Colors.white),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
