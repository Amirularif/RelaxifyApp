import 'package:flutter/material.dart';
import 'package:relaxify/LoginPage.dart';
import 'package:relaxify/MeditationListPage.dart';
import 'Dashboard.dart';
import 'MeditationInfoPage.dart';
import 'MusicPlayerPage.dart';

void main() async{
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Dashboard(),
    );
  }
}






