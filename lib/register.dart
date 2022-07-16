import 'package:flutter/material.dart';

class Register extends StatelessWidget {
  const Register({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  Image.asset("assets/Rectangle 1.png"),
                  Padding(
                    padding: const EdgeInsets.only(top: 80, left: 40),
                    child: Column(
                      children: [
                        Text(
                          "Register",
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 30,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Become Our Member",
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 18,
                            color: Colors.white70,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 30, top: 20),
                        child: Image.asset(
                          "assets/FYPlogo_suman-11 1.png",
                          color: Colors.white,
                          height: 125,
                          width: 125,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Textfild(Icons.person, "Enter Your Name", "UserName"),
              SizedBox(
                height: 20,
              ),
              Textfild(Icons.mail, "Enter Your E-mail", "E-Mail"),
              SizedBox(
                height: 20,
              ),
              Textfild(Icons.phone, "Enter Your PhoneNumber", "PhoneNumber"),
              SizedBox(
                height: 20,
              ),
              PassText(
                  Icons.remove_red_eye, "Enter Your Password ", "PassWord"),
              SizedBox(
                height: 20,
              ),
              PassText(
                  Icons.remove_red_eye, "Confirm Your Password", "PassWord"),
              SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class PassText extends StatelessWidget {
  PassText(this.suffIcon, this.hintText, this.lableText);
  var suffIcon;
  var hintText;
  var lableText;

  @override
  Widget build(BuildContext context) {
    return Padding(
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
            suffIcon,
            color: Color(0xff3F84FC),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(24),
            borderSide: BorderSide(
              color: Color(0xff3F84FC),
              width: 2,
            ),
          ),
          labelText: lableText,
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(24),
            borderSide: BorderSide(
              color: Color(0xff3F84FC),
              width: 2,
            ),
          ),
          hintText: hintText,
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
