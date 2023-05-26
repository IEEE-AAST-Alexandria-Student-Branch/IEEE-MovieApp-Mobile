import 'package:flutter/material.dart';
import 'package:ieee_movieapp/Constants/colors.dart';

class Navb extends StatelessWidget {
  const Navb({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // double screenWidth = MediaQuery.of(context).size.width;
    // double screenHigh = MediaQuery.of(context).size.height;
    // double iconsize = screenWidth/12;
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: 3,
          backgroundColor: Colors.white12,
          unselectedItemColor: primaryColor,
          selectedItemColor: secondaryColor,
          selectedIconTheme: const IconThemeData(size: 20),
          showSelectedLabels: true,
          items: const [
            BottomNavigationBarItem(
                icon: Icon(Icons.home_outlined), label: "Home"),
            BottomNavigationBarItem(
                icon: Icon(Icons.explore_outlined), label: "Explore"),
            BottomNavigationBarItem(
                icon: Icon(Icons.bookmark_add_rounded), label: "My List"),
            BottomNavigationBarItem(
                icon: Icon(Icons.file_download_outlined), label: "Download"),
            BottomNavigationBarItem(
                icon: Icon(Icons.person_outlined), label: "Profile"),
          ]),
    );
  }
}
