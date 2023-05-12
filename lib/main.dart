import 'package:flutter/material.dart';
import 'package:ieee_movieapp/Pages/profile/dropdown.dart';
import 'package:ieee_movieapp/Pages/profile/fill.dart';

import 'Constants/colors.dart';
import 'Pages/Intro/page 1.dart';
import 'Pages/profile/navbar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'IEEE MovieApp',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: primaryColor,
      ),
      home: const Fillprof(),
    );
  }
}