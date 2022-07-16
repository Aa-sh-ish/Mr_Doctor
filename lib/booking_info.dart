import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'dart:ui' as ui;

class info extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black26,
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 15, top: 50),
              child: Container(
                height: 40.h,
                child: Column(
                  children: [
                    SizedBox(
                      height: 2.h,
                    ),
                    Row(
                      children: [
                        Text(
                          'Patient Name:',
                          style: TextStyle(
                              fontSize: 20,
                              foreground: Paint()
                                ..shader = ui.Gradient.linear(
                                  const Offset(0, 20),
                                  const Offset(150, 20),
                                  <Color>[
                                    Colors.teal,
                                    Colors.teal,
                                  ],
                                )),
                        ),
                        Text(
                          "Santosh Mishra",
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 2.h,
                    ),
                    Row(
                      children: [
                        Text(
                          'Booking Details:',
                          style: TextStyle(
                              fontSize: 20,
                              foreground: Paint()
                                ..shader = ui.Gradient.linear(
                                  const Offset(0, 20),
                                  const Offset(150, 20),
                                  <Color>[
                                    Colors.teal,
                                    Colors.teal,
                                  ],
                                )),
                        ),
                        Text(
                          "Monday 5 june 2022",
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 2.h,
                    ),
                    Row(
                      children: [
                        Text(
                          'Booked:',
                          style: TextStyle(
                              fontSize: 20,
                              foreground: Paint()
                                ..shader = ui.Gradient.linear(
                                  const Offset(0, 20),
                                  const Offset(150, 20),
                                  <Color>[
                                    Colors.teal,
                                    Colors.teal,
                                  ],
                                )),
                        ),
                        Text(
                          "Santosh Mishra",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 2.h,
                    ),
                    Row(
                      children: [
                        Text(
                          'Booking Code:',
                          style: TextStyle(
                              fontSize: 20,
                              foreground: Paint()
                                ..shader = ui.Gradient.linear(
                                  const Offset(0, 20),
                                  const Offset(150, 20),
                                  <Color>[
                                    Colors.teal,
                                    Colors.teal,
                                  ],
                                )),
                        ),
                        Text(
                          "6351",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 2.h,
                    ),
                    Row(
                      children: [
                        Text(
                          'Clinic Map:',
                          style: TextStyle(
                              fontSize: 20,
                              foreground: Paint()
                                ..shader = ui.Gradient.linear(
                                  const Offset(0, 20),
                                  const Offset(150, 20),
                                  <Color>[
                                    Colors.teal,
                                    Colors.teal,
                                  ],
                                )),
                        ),
                        Text(
                          "See Map",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 2.h,
                    ),
                    Row(
                      children: [
                        Text(
                          'Clinic Phone Number:',
                          style: TextStyle(
                              fontSize: 20,
                              foreground: Paint()
                                ..shader = ui.Gradient.linear(
                                  const Offset(0, 20),
                                  const Offset(150, 20),
                                  <Color>[
                                    Colors.teal,
                                    Colors.teal,
                                  ],
                                )),
                        ),
                        Text(
                          "985550000",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 2.h,
                    ),
                    Row(
                      children: [
                        Text(
                          'Clinic Address:',
                          style: TextStyle(
                              fontSize: 20,
                              foreground: Paint()
                                ..shader = ui.Gradient.linear(
                                  const Offset(0, 20),
                                  const Offset(150, 20),
                                  <Color>[
                                    Colors.teal,
                                    Colors.teal,
                                  ],
                                )),
                        ),
                        Text(
                          "Teku hospital",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Text(
              "Pay Using",
              style: TextStyle(
                fontSize: 15.sp,
                color: Colors.teal,
              ),
            ),
            Image.asset(
              'assets/esewa.png',
              height: 30.h,
              width: 30.w,
            ),
          ],
        ),
      ),
    );
  }
}
