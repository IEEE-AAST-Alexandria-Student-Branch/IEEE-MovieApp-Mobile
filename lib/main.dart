import 'package:flutter/material.dart';
import 'package:ieee_movieapp/Pages/Intro/on_board_page.dart';
import 'Constants/colors.dart';
import 'Constants/themes.dart';

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
          expansionTileTheme: expantionTileTheme,
          chipTheme: chipButtonTheme,
          scaffoldBackgroundColor: primaryColor,
          inputDecorationTheme: textFieldTheme),
      home: const OnBoardingScreen(),
    );
  }
}
