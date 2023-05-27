import 'package:flutter/material.dart';
import 'package:ieee_movieapp/Pages/Home/HomeWidgets/StackWidgets/top_of_stack_widget.dart';
import 'StackWidgets/bottom_of_stack_widget.dart';

class Topstack extends StatefulWidget {
  const Topstack({Key? key}) : super(key: key);

  @override
  State<Topstack> createState() => _Topstack();
}

class _Topstack extends State<Topstack> {
  @override
  Widget build(BuildContext context) {
    double screenHigh = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Stack(
      children: [
        Image.asset(
          "images/movies/drstrange2.jpg",
          alignment: Alignment.topCenter,
          height: screenHigh * (42 / 100),
          width: screenWidth,
          fit: BoxFit.fitWidth,
        ),
        TopOfStack(),
        BottomOfStack(),
      ],
    );
  }
}
