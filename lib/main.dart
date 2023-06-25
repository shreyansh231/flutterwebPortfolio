import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutterweb/utils/portfolio.dart';

import 'components/timeline.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: FirebaseOptions(
        apiKey: "AIzaSyB3fsBJNUNIdRdlolYgOqGvxC8m4ENkygI",
        appId: "1:181952309023:web:49e2424da0a2806c05f22a",
         messagingSenderId: "181952309023",
      projectId: "portfolio-d827a",
    )
  );
  runApp( const MyApp());
}
class MyApp extends StatelessWidget {
   const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'PortFolio',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.purple,
        canvasColor: Colors.purple.shade50,
        useMaterial3:true,
      ),
      home: Portfolio(),
    );
  }
}

