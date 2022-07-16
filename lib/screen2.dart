import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class Screeen2 extends StatelessWidget {
  const Screeen2({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Text(
                "Enroll as an Doctor",
                style: TextStyle(fontSize: 15.sp),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
