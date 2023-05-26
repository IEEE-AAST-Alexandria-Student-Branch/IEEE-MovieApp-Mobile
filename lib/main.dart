import 'package:flutter/material.dart';
import 'Constants/colors.dart';
import 'Constants/themes.dart';
import 'Pages/Home/home_page.dart';

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
      home: const Home(),
    );
  }
}
