import 'package:flutter/material.dart';
import 'package:ieee_movieapp/Constants/fonts.dart';

import '../../../Constants/colors.dart';

class Page1OnBoard extends StatelessWidget {
  const Page1OnBoard({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      SizedBox(
        height: MediaQuery.of(context).size.height,
        child: Image.asset(
          "images/batman.jpg",
          fit: BoxFit.cover,
        ),
      ),
      Container(
        alignment: const Alignment(0, 0.5),
        child: const Text(
          "IEEE Movie App",
          style: TextStyle(color: txtColor, fontFamily: big, fontSize: 30),
        ),
      ),
      Container(
        alignment: const Alignment(0, 0.6),
        child: const Text(
          "The best movie streaming app of the centrury",
          style: TextStyle(color: txtColor, fontFamily: small, fontSize: 12),
        ),
      ),
      Container(
        alignment: const Alignment(0, 0.65),
        child: const Text(
          "to make your days great!",
          style: TextStyle(color: txtColor, fontFamily: small, fontSize: 12),
        ),
      )
    ]);
  }
}
