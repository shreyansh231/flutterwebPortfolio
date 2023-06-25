import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:velocity_x/velocity_x.dart';

import '../utils/animated_contact.dart';
import '../utils/socialrow.dart';

class About extends StatefulWidget {
  const About({super.key});

  @override
  State<About> createState() => _AboutState();
}

class _AboutState extends State<About> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 20.0),
      // width: context.screenWidth< 900
      //     ?context.screenWidth * 0.9
      //     :context.screenWidth * 0.3,
      decoration: BoxDecoration(
        color: Colors.white,
      ),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: [
            Image.asset(
                "assets/images.jpg",
              height: 150.0,
            ),
            Text("Shreyansh Agrawal",style: TextStyle(fontSize: 30.0,fontWeight: FontWeight.bold),),
            Text("Enthusiast Coder and have keen interest of learning new things , Also passionate person with positive mindset",
              style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
            const Wrap(
              spacing: 10,
              runSpacing: 10,
              children: [
                Chip(label: Text("Flutter developer",),
                  backgroundColor: Colors.cyan,),
                Chip(label: Text("App Developer",),
                  backgroundColor: Colors.cyan,),
              ],
            ),
            Divider(),
            // AnimatedContact(
            //   iconData: FontAwesomeIcons.linkedin,
            //   title: 'Linkdin',
            //   subtitle: 'Shreyansh Agrawal',
            //   onTap: () {},
            // ),
            // AnimatedContact(
            //   iconData: FontAwesomeIcons.facebook,
            //   title: 'facebook',
            //   subtitle: 'Shreyansh Agrawal',
            //   onTap: () {},
            // ),
            // AnimatedContact(
            //   iconData: FontAwesomeIcons.github,
            //   title: 'Github',
            //   subtitle: 'Shreyansh Agrawal',
            //   onTap: () {},
            // ),
            SocialRow(),


          ],
        ),
      ),
    );
  }
}
