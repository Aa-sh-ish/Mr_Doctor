import 'package:flutter/material.dart';

class Screen3 extends StatelessWidget {
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
      backgroundColor: Color(0xffF3F7FF),
      body: Padding(
        padding: const EdgeInsets.all(14.0),
        child: ListView.builder(
          /*physics: ScrollPhysics()*/
          itemCount: 6,
          shrinkWrap: true,
          scrollDirection: Axis.horizontal, //scroll horizontally
          itemBuilder: (context, index) {
            return Container(
              height: 130, //from figma design
              width: 300, //takes the full width
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(
                    Radius.circular(10)), //Change the radius of the container
                color: Colors.white,
              ),
              child: Padding(
                padding: const EdgeInsets.only(top: 17.0, left: 12, right: 13),
                child: Column(
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CircleAvatar(
                          radius: 28,
                          //  backgroundColor: Colors.blue,
                          backgroundImage: AssetImage(images[index]),
                        ),
                        SizedBox(
                          width: 11,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('${name[index]}'),
                            Container(
                                color: Color(0xff48BF94).withOpacity(0.19),
                                child: Padding(
                                  padding: const EdgeInsets.all(2.0),
                                  child: Text('${profession[index]}'),
                                )),
                            Text('13:00 PM - 15:00 PM'),
                          ],
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text('View Profile'),
                        SizedBox(
                          width: 5,
                        ),
                        CircleAvatar(
                          radius: 13,
                          backgroundColor: Colors.blue,
                          child: Icon(
                            Icons.arrow_right_alt_outlined,
                            size: 20,
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
