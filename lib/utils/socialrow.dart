import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterweb/utils/animated_button_icon.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class SocialRow extends StatelessWidget {
  const SocialRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
      //   AnimatedIconButton(iconData: FontAwesomeIcons.facebook , onTap: (){},),
      //  AnimatedIconButton(iconData: FontAwesomeIcons.instagram, onTap: (){}),
      // AnimatedIconButton(iconData: FontAwesomeIcons.linkedin, onTap: () => launchUrl(Uri.parse('https://www.linkedin.com/in/shreyansh-agrawal-b95699228/')), ),
        InkWell(
          onTap: () => launchUrl(Uri.parse('https://www.linkedin.com/in/shreyansh-agrawal-b95699228/')),
          child: AnimatedContainer(
            duration: const Duration(milliseconds: 300),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(
                12.0,
              ),
              border: Border.all(
                color:  Colors.white,
              ),
            ),
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: FaIcon(FontAwesomeIcons.linkedin,
                    size: 30.0,
                  ),
                ),
              ],
            ),
          ),
        ),
        InkWell(
          onTap: () => launchUrl(Uri.parse('')),
          child: AnimatedContainer(
            duration: const Duration(milliseconds: 300),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(
                12.0,
              ),
              border: Border.all(
                color:  Colors.white,
              ),
            ),
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: FaIcon(FontAwesomeIcons.instagram,
                    size: 30.0,
                  ),
                ),
              ],
            ),
          ),
        ),
        InkWell(
          onTap: () => launchUrl(Uri.parse('https://github.com/shreyansh231')),
          child: AnimatedContainer(
            duration: const Duration(milliseconds: 300),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(
                12.0,
              ),
              border: Border.all(
                color:  Colors.white,
              ),
            ),
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: FaIcon(FontAwesomeIcons.github,
                    size: 30.0,
                  ),
                ),
              ],
            ),
          ),
        )


      ],
    );
  }
}




