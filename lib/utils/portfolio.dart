import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterweb/components/about.dart';
import 'package:flutterweb/components/aboutnamed.dart';
import 'package:flutterweb/components/education.dart';
import 'package:flutterweb/components/footer.dart';
import 'package:flutterweb/components/skills.dart';

import '../components/timeline.dart';

class Portfolio extends StatefulWidget {
  const Portfolio({super.key});

  @override
  State<Portfolio> createState() => _PortfolioState();
}

class _PortfolioState extends State<Portfolio> {
  List<Widget> navItems = [];
  bool isMobile=false;
  final skillkey = GlobalKey();
  @override
  void initState(){
    navItems = [
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: ElevatedButton(onPressed: () {}, child: Text("Education")),
      ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: ElevatedButton(onPressed: () {
          Scrollable.ensureVisible(skillkey.currentContext!);
        }, child: Text("Skills")),
      ),
    ];

    super.initState();
  }
  Widget build(BuildContext context) {
    isMobile =MediaQuery.of(context).size.width>700 ?false:true;
    return Scaffold(
      appBar: AppBar(
        title: Text("Portfolio"),
        actions: isMobile ? null : navItems,
      ),
      drawer: isMobile
          ? Drawer(
        child: ListView(
          children: navItems,
        ),
      )
          : null,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Wrap(
              alignment: WrapAlignment.center,
              children: [
               About(),
                Education(),
                Aboutnamed(),
              ],
            ),
           // Footer(),
            Skills(
              key: skillkey,
            ),
          ],
        ),
      )
    );
  }
}
