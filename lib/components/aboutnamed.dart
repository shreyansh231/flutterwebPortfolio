import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Aboutnamed extends StatelessWidget {
  const Aboutnamed({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
        height: MediaQuery.of(context).size.height*0.5,
        width: MediaQuery.of(context).size.width*0.9,
        decoration: BoxDecoration(
          color: Colors.purple.shade900,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(("About me"),style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
            ),
            Padding(
              padding: const EdgeInsets.all(40.0),
              child: Text("I am persuing undergraduate B.E in Electronic and Communication at NIT kurukshetra . Looking forward to learn Android Developnment and explore Competitive Programing.",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white),),
            ),
            // Text("CGPA 9.6"),

          ],
        )
    );
  }
}
