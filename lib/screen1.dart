import 'package:flutter/material.dart';
//import 'package:health/MovieScreen.dart';
//import 'package:scroll_app_bar/scroll_app_bar.dart';
import 'package:sizer/sizer.dart';
import 'package:carousel_slider/carousel_slider.dart';

class Screen1 extends StatelessWidget {
  var toDo = [
    "Health is a Boon ,Care for it ",
    "Eat the Best, Leave the Rest",
    "Apple a day Keeps a Doctor away",
    "True Wealth is Health"
  ];
  var name = [
    "Dr.Aashish Lamsal",
    "Dr.Ramesh Kharel",
    "Dr.Dinod Sigdel",
    "Dr.Suman Mishra",
    "Dr.Gp Thapa",
    "Dr.Kulman Ghising",
  ];

  var profession = [
    "Surgeon",
    "Surgeon",
    "Surgeon",
    "Surgeon",
    "Surgeon",
    "Surgeon",
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
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: 5.h,
            ),
            Container(
              height: 17.h,
              width: double.infinity,
              child: Expanded(
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    physics: ScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: 3,
                    itemBuilder: (context, int index) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
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
                                          AssetImage(images[index]),
                                    ),
                                    SizedBox(
                                      width: 11,
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text('${name[index]}'),
                                        Container(
                                          color: Color(0xff48BF94)
                                              .withOpacity(0.19),
                                          child: Text(
                                            '${profession[index]}',
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
                        ),
                      );
                    }),
              ),
            ),
            SizedBox(
              height: 3.h,
            ),
            CarouselSlider(
              items: toDo
                  .map(
                    (item) => Container(
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            colors: [Color(0xff186C57), Colors.white24]),
                        borderRadius: BorderRadius.all(
                          Radius.circular(25),
                        ),
                      ),
                      child: Center(
                        child: Text(
                          item.toString(),
                        ),
                      ),
                    ),
                  )
                  .toList(),
              options: CarouselOptions(
                height: 10.h,
                aspectRatio: 16 / 9,
                viewportFraction: 0.6,
                initialPage: 1,
                enableInfiniteScroll: true,
                reverse: false,
                autoPlay: true,
                autoPlayInterval: Duration(milliseconds: 20),
                autoPlayAnimationDuration: Duration(milliseconds: 200),
                autoPlayCurve: Curves.fastOutSlowIn,
                enlargeCenterPage: true,
                //onPageChanged: callbackFunction,
                scrollDirection: Axis.horizontal,
              ),
            ),
            SizedBox(
              height: 3.h,
            ),
            Text(
              "Enter Your Symptoms",
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            Container(
              child: Padding(
                padding: const EdgeInsets.only(top: 5, left: 40, right: 60),
                child: Container(
                  child: Column(
                    children: [
                      ListView.builder(
                        itemCount: 3,
                        shrinkWrap: true,
                        scrollDirection: Axis.vertical,
                        physics: NeverScrollableScrollPhysics(),
                        itemBuilder: (context, index) {
                          return Symptoms("${index + 1}");
                        },
                      ),
                      SizedBox(
                        height: 4.h,
                      ),
                      Container(
                        decoration: BoxDecoration(
                            color: Color(0xff48BF94),
                            borderRadius: BorderRadius.circular(10)),
                        child: Text(
                          " Search Doctor ",
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 15.sp),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Symptoms extends StatelessWidget {
  Symptoms(this.hinttext);

  var hinttext;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        hintText: hinttext,
      ),
    );
  }
}
