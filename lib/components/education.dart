import 'dart:developer';


import 'package:flutter/material.dart';
import 'package:flutterweb/components/timeline.dart';

import 'package:velocity_x/velocity_x.dart';




class Education extends StatefulWidget {
  const Education({super.key});

  @override
  State<Education> createState() => _EducationState();
}

class _EducationState extends State<Education> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Container(
      margin: EdgeInsets.only(top: 20.0),
      width: context.screenWidth< 1000
          ? context.screenWidth * 0.9
          : context.screenWidth < 1600
          ? context.screenWidth * 0.3
          : context.screenWidth * 0.2,

        decoration: BoxDecoration(
        color: Colors.white,
        ),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child:



              Text(
                "Education",
                style: TextStyle(
                    fontSize: 36.0,fontWeight: FontWeight.bold,color: Colors.black),
              ),
            ),
            SizedBox(height: 20,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                    height: MediaQuery.of(context).size.height*0.35,
                    width: MediaQuery.of(context).size.width*0.9,
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text("National Institute Of Technology Kurukshetra",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white),),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Center(child: Text("B.TECH In ELECTRONIC AND COMMUNICATIONS",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold , color: Colors.white),)),
                        ),
                        // Text("CGPA 9.6"),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text("NOV 2021-present    CGPA : 8.9", style: TextStyle(color: Colors.grey, fontSize: 14)),
                        )
                      ],
                    )

                ),
                SizedBox(height: 20,),
                Container(
                    height: MediaQuery.of(context).size.height*0.35,
                    width: MediaQuery.of(context).size.width*0.9,
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text("AADHARSHILA SENIOR SECONDARY SCHOOL BHATAPARA",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white),),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Center(child: Text("12th  Standard | CBSE ",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold , color: Colors.white),)),
                        ),
                        // Text("CGPA 9.6"),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text("April 2020-March 2021   percentage : 87% ", style: TextStyle(color: Colors.grey, fontSize: 14)),
                        )
                      ],
                    )

                ),
                SizedBox(height: 20,),
                Container(
                    height: MediaQuery.of(context).size.height*0.35,
                    width: MediaQuery.of(context).size.width*0.9,
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text("GURUKUL SENIOR SECONDARY SCHOOL BHATAPARA",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white),),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Center(child: Text("10th Standard | CBSE ",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold , color: Colors.white),)),
                        ),
                        // Text("CGPA 9.6"),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text("April 2018-March 2019 percentage : 96% ", style: TextStyle(color: Colors.grey, fontSize: 14)),
                        )
                      ],
                    )

                ),

              ],
            ),
          ]
    )
    )
    );
  }
}
