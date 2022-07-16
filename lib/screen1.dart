import 'package:flutter/material.dart';
//import 'package:health/MovieScreen.dart';
//import 'package:scroll_app_bar/scroll_app_bar.dart';

class Screen1 extends StatelessWidget {
  var name = [
    "Dr.Aashish Lamsal",
    "Dr.Ramesh Kharel",
    "Dr.Dinod Sigdel",
    "Dr.Suman Mishra",
    "Dr.Gp Thapa",
    "Dr.Kulman Ghising",
  ];

  var profession = [
    "Sergion",
    "Sergion",
    "Sergion",
    "Sergion",
    "Sergion",
    "Sergion",
  ];

  var images = [
    "assets/aakha.jpg",
    "assets/DR1.png",
    "assets/DR2.png",
    "assets/DR3.png",
    "assets/DR4.png",
    "assets/DR5.png",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Text('h'),
            Expanded(
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  physics: ScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: 3,
                  itemBuilder: (context, int index) {
                    return Container(
                      height: 120,
                      width: 260,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Color(0xff2F80ED),
                            // spreadRadius: 2,
                            blurRadius: 8,
                          )
                        ],
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 17, left: 12),
                        child: Column(
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                CircleAvatar(
                                  backgroundColor: Color(0xff2F80ED),
                                  radius: 30,
                                  backgroundImage:
                                      AssetImage("assets/aakha.jpg"),
                                ),
                                SizedBox(
                                  width: 11,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Dr.Aashish Lamsal",
                                      style: TextStyle(
                                        fontWeight: FontWeight.w700,
                                        fontSize: 15,
                                      ),
                                    ),
                                    Container(
                                      color:
                                          Color(0xff48BF94).withOpacity(0.19),
                                      child: Text(
                                        "Sergion",
                                        style: TextStyle(
                                          fontWeight: FontWeight.w700,
                                          fontSize: 15,
                                          color: Color(0xff48BF94),
                                        ),
                                      ),
                                    ),
                                    Text(
                                      "2pm-8pm",
                                      style: TextStyle(
                                        fontWeight: FontWeight.w700,
                                        fontSize: 15,
                                        color: Color(0xff969696),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 15),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Text(
                                    "View Profile",
                                    style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 10,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Container(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(10)),
                                        color: Color(0xff969696),
                                      ),
                                      child: Icon(Icons.forward)),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  }),
            ),
            OutlinedButton(
              onPressed: () {},
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
          ],
        ),
      ),
    );
  }
}
