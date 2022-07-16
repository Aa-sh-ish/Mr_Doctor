import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'dart:ui' as ui;

import 'booking_info.dart';
class DocotorBio extends StatefulWidget {
  const DocotorBio({Key? key}) : super(key: key);

  @override
  State<DocotorBio> createState() => _DocotorBioState();
}

class _DocotorBioState extends State<DocotorBio> {
  DateTime selectedDate = DateTime.now();
  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
        context: context,
        initialDate: selectedDate,
        firstDate: DateTime(2015, 8),
        lastDate: DateTime(2101));
    if (picked != null && picked != selectedDate) {
      setState(() {
        selectedDate = picked;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Doctor Details"),
        centerTitle: true,
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.notification_add),
            tooltip: 'Open shopping cart',
            onPressed: () {
              // handle the press
            },
          ),
        ],


      ),

      body: Column(
        children: [
          SizedBox(
            height: 2.h,
          ),

          Align(
            alignment: Alignment.center,
            child: CircleAvatar(
              backgroundColor: Colors.greenAccent[400],
              backgroundImage: NetworkImage('https://img.freepik.com/free-vector/doctor-character-background_1270-84.jpg?w=2000'),
              radius: 100,

            ),
          ),
          Text("Doctors name",style: TextStyle(
              fontSize: 40,
              foreground: Paint()
                ..shader = ui.Gradient.linear(
                  const Offset(0, 20),
                  const Offset(150, 20),
                  <Color>[
                    Colors.deepOrange,
                    Colors.deepOrange,
                  ],
                )),),
          SizedBox(height: 2.h,),
          Align(
            alignment: Alignment.topLeft,
            child: Text("Bio",style: TextStyle(
                fontSize: 40,
                foreground: Paint()
                  ..shader = ui.Gradient.linear(
                    const Offset(0, 20),
                    const Offset(150, 20),
                    <Color>[
                      Colors.black, Colors.black,
                    ],
                  )),),
          ),
          Text("Doctors, also known as physicians, are licensed health professionals who maintain and restore human health through the practice of medicine. /n"
              "They examine patients, review their medical history, diagnose illnesses or injuries, administer treatment, and counsel patients on their health and well-being."
          ),
          SizedBox(height: 2.h,),


          Container( decoration: BoxDecoration(

              //DecorationImage
            border: Border.all(
              color: Colors.white,
              width: 8,
            ), //Border.all
            borderRadius: BorderRadius.circular(15),
            boxShadow: [
              BoxShadow(
                color: Colors.white,
                offset: const Offset(
                  5.0,
                  5.0,
                ), //Offset
                blurRadius: 0.0,
                spreadRadius: 0.0
              ), //BoxShadow
              BoxShadow(
                color: Colors.white,
                offset: const Offset(0.0, 0.0),
                blurRadius: 0.0,
                spreadRadius: 0.0,
              ), //BoxShadow
            ],
          ),
            child: Text('Select Your Appointment Date',style:TextStyle( fontSize: 20,
                foreground: Paint()
                  ..shader = ui.Gradient.linear(
                    const Offset(0, 20),
                    const Offset(150, 20),
                    <Color>[
                      Colors.deepOrange,
                      Colors.deepOrange,
                    ],
                  )),
            ),


          ),
          SizedBox(height: 2.h,),
          Container(
            height: 15.h,
            width: 30.h,
            child: CupertinoDatePicker(
              mode: CupertinoDatePickerMode.date,
              initialDateTime: DateTime(1969, 1, 1),
              onDateTimeChanged: (DateTime newDateTime) {
                // Do something
              },
            ),
          ),
          SizedBox(height: 2.h,),

          Container( decoration: BoxDecoration(

        //DecorationImage
        border: Border.all(
          color: Colors.white,
          width: 8,
        ), //Border.all
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
              color: Colors.white,
              offset: const Offset(
                5.0,
                5.0,
              ), //Offset
              blurRadius: 0.0,
              spreadRadius: 0.0
          ), //BoxShadow
          BoxShadow(
            color: Colors.white,
            offset: const Offset(0.0, 0.0),
            blurRadius: 0.0,
            spreadRadius: 0.0,
          ), //BoxShadow
        ],
      ),
        child: TextButton(
          child: Text("Get Appointment ",style:TextStyle( fontSize: 20,
              foreground: Paint()
                ..shader = ui.Gradient.linear(
                  const Offset(0, 20),
                  const Offset(150, 20),
                  <Color>[
                    Colors.deepOrange,
                    Colors.deepOrange,
                  ],
                )),),
          onPressed: (){
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) =>  info()),
            );
          },
        ),
      )
                ]

              ),

    );
  }
}
