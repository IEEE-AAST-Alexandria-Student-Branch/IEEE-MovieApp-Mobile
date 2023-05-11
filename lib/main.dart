import 'package:flutter/material.dart';
import 'package:ieee_movieapp/Pages/Search/search_page.dart';

import 'Constants/colors.dart';
import 'Constants/fonts.dart';
import 'Constants/themes.dart';
import 'Pages/Intro/intro_page.dart';

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
          chipTheme: chipButtonTheme,
          scaffoldBackgroundColor: primaryColor,
          inputDecorationTheme: textFieldTheme),
      home: const Intro(),
    );
  }
}
