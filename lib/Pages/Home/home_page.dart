import 'package:flutter/material.dart';
import 'package:ieee_movieapp/Pages/Home/HomeWidgets/bottom_widget.dart';
import 'HomeWidgets/stack_widget.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SizedBox(
        width: screenWidth,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Topstack(),
            BottomWidget(),
          ],
        ),
      ),
    );
  }
}
