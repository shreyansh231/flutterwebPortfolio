import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AnimatedContact extends StatefulWidget {
  final IconData iconData;
  final String title;
  final String subtitle;
  final VoidCallback onTap;
  const AnimatedContact({
    Key? key,
    required this.iconData,
    required this.title,
    required this.subtitle,
    required this.onTap,
  }) : super(key: key);

  @override
  State<AnimatedContact> createState() => _AnimatedContactState();
}

class _AnimatedContactState extends State<AnimatedContact> {
  bool isHoverring =false;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){},
      onHover: (val){
        setState(() {
          isHoverring =val;
        });
      },
      child:AnimatedContainer(
        duration: Duration(milliseconds: 300),
        decoration: BoxDecoration(
          color: isHoverring ?Colors.grey.shade50 : Colors.white,
          borderRadius: BorderRadius.circular(12.0),
            border: Border.all(color: isHoverring ? Colors.grey : Colors.white, )),
        child: Row(
          children: [
            Card(child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: FaIcon(
                widget.iconData,
              )
            )),
            SizedBox(height: 12,),
            Column(
              children: [
               Text(widget.title,style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                Text(widget.subtitle),
              ],
            )
          ],
        ),
      ),

    );
  }
}
