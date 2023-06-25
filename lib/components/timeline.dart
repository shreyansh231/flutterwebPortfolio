import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'constants.dart';
import 'events.dart';

class TimelineComponent extends StatelessWidget {
  TimelineComponent({Key? key, this.title}) : super(key: key);

  final String? title;

  final List<Events> listOfEvents = [
    Events(time: "National Institute Of Technology Kurukshetra", eventName: "B.TECH In ELECTRONIC AND COMMUNICATIONS", description: "NOV 2021-present    CGPA : 8.9"),
    Events(time: "AADHARSHILA SENIOR SECONDARY SCHOOL BHATAPARA", eventName: "12th  Standard | CBSE ", description: "April 2020-March 2021   percentage : 87% "),
    Events(time: "GURUKUL SENIOR SECONDARY SCHOOL BHATAPARA", eventName: "10th Standard | CBSE ", description: "April 2018-March 2019 percentage : 96% "),

  ];

  final List<Color> listOfColors = [Constants.kPurpleColor,Constants.kGreenColor,Constants.kRedColor];

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    Random random = new Random();
    return Scaffold(
   //  drawer: Drawer(),
      appBar: AppBar(title: Text(this.title!), actions: [
        Padding(
          padding: const EdgeInsets.fromLTRB(0, 10, 10, 0),
          child: Stack(
            children: [
              CircleAvatar(
                backgroundColor: Colors.blue.shade200,
                child: const Text('PH'),
              ),
              new Positioned(
                right: 0,
                top: 0,
                child: new Container(
                  padding: EdgeInsets.all(1),
                  decoration: new BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(6),
                  ),
                  constraints: BoxConstraints(
                    minWidth: 12,
                    minHeight: 12,
                  ),
                ),
              )
            ],
          ),
        ),
      ]),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Flexible(
            child: ListView.builder(
                shrinkWrap: true,
                itemCount: listOfEvents.length,
                itemBuilder: (context, i) {
                  return Stack(
                    children: [
                      Padding(
                        padding: EdgeInsets.all(40),
                        child: Row(
                          children: [
                            SizedBox(width: size.width * 0.1),
                            Container(
                              height: 10,
                              width: 20,
                            ),
                            SizedBox(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                 Container(
                                  height: MediaQuery.of(context).size.height*0.35,
                                   width: MediaQuery.of(context).size.width*0.65,
                                   decoration: BoxDecoration(
                                     color: Colors.black,
                                     borderRadius: BorderRadius.circular(15),
                                   ),
                                   child: Column(
                                     children: [
                                       Padding(
                                         padding: const EdgeInsets.all(8.0),
                                         child: Text(listOfEvents[i].time,style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white),),
                                       ),
                                       Padding(
                                         padding: const EdgeInsets.all(8.0),
                                         child: Center(child: Text(listOfEvents[i].eventName,style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold , color: Colors.white),)),
                                       ),
                                      // Text("CGPA 9.6"),
                                       Padding(
                                         padding: const EdgeInsets.all(8.0),
                                         child: Text(listOfEvents[i].description, style: TextStyle(color: Colors.grey, fontSize: 14)),
                                       )
                                     ],
                                   )

                                 ),
                                //  Text(listOfEvents[i].description, style: TextStyle(color: Colors.grey, fontSize: 12),)
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                      Positioned(
                        left: 50,
                        child: new Container(
                          height: size.height * 0.7,
                          width: 1.0,
                          color: Colors.black,
                        ),
                      ),
                      Positioned(
                        bottom: 5,
                        child: Padding(
                          padding: const EdgeInsets.all(40.0),
                          child: Container(
                            height: 20.0,
                            width: 20.0,
                            decoration: new BoxDecoration(
                              color: listOfColors[random.nextInt(3)],
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                        ),
                      ),
                    ],
                  );
                }
                ),
          ),
        ],
      ),
    );
  }
}