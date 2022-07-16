import 'package:flutter/material.dart';
import 'package:health/BottomVav2.dart';
import 'package:health/register.dart';
//import 'package:health/bottmVani.dart';
//import 'package:health/screen1.dart';
import 'package:sizer/sizer.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Stack(
                children: [
                  Image.asset("assets/Rectangle 1.png"),
                  Positioned(
                    top: 10,
                    left: 60,
                    child: Column(
                      children: [
                        Image.asset(
                          "assets/FYPlogo_suman-11 1.png",
                          height: 20.h,
                          width: 120,
                          color: Colors.white,
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 24),
                              child: Text(
                                "Log In",
                                style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    fontSize: 30,
                                    color: Colors.white),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 5.h,
              ),
              Textfild(Icons.person, "Enter Your Name", "UserName"),
              SizedBox(
                height: 5.h,
              ),
              Textfild(Icons.mail, "Enter Your E-mail", "Email"),
              SizedBox(
                height: 5.h,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 24, right: 24),
                child: TextField(
                  onChanged: (val) {},
                  obscureText: true,
                  decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.lock,
                      color: Color(0xff3F84FC),
                    ),
                    suffixIcon: Icon(
                      Icons.remove_red_eye,
                      color: Color(0xff3F84FC),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(24),
                      borderSide: BorderSide(
                        color: Color(0xff3F84FC),
                        width: 2,
                      ),
                    ),
                    labelText: "Password",
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(24),
                      borderSide: BorderSide(
                        color: Color(0xff3F84FC),
                        width: 2,
                      ),
                    ),
                    hintText: "Enter your Password",
                  ),
                ),
              ),
              SizedBox(
                height: 5.h,
              ),
              OutlinedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => BottonNav2(),
                    ),
                  );
                },
                child: Text(
                  "Log In",
                  style: TextStyle(
                    color: Color(0xff2F80ED),
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                  ),
                ),
                style: OutlinedButton.styleFrom(
                  backgroundColor: Colors.white12,
                  primary: Colors.red,
                  fixedSize: Size(200, 60),
                  side: BorderSide(width: 3, color: Color(0xff2F80ED)),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
              ),
              Stack(
                children: [
                  Image.asset(
                    "assets/Rectangle 3.png",
                    height: 30.h,
                  ),
                  Positioned(
                    height: 20.h,
                    left: 40,
                    child: Row(
                      children: [
                        Text(
                          "Don't Have Account    ",
                          style: TextStyle(
                              fontWeight: FontWeight.w500, fontSize: 17),
                        ),
                        SizedBox(
                          width: 40,
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Register(),
                              ),
                            );
                          },
                          child: Text(
                            "Register",
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 22,
                                color: Colors.white,
                                fontStyle: FontStyle.italic),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Textfild extends StatelessWidget {
  Textfild(
    this.icon,
    this.hintText,
    this.lableText,
  );
  var icon;
  var hintText;
  var lableText;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 24, right: 24),
      child: TextField(
        onChanged: (val) {},
        decoration: InputDecoration(
          prefixIcon: Icon(
            icon,
            color: Color(0xff3F84FC),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(24),
            borderSide: BorderSide(
              color: Color(0xff3F84FC),
              width: 2,
            ),
          ),
          hintText: hintText,
          labelText: lableText,
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(24),
            borderSide: BorderSide(
              color: Color(0xff3F84FC),
              width: 2,
            ),
          ),
        ),
      ),
    );
  }
}
