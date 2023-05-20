import 'package:flutter/material.dart';
import 'package:ieee_movieapp/Constants/colors.dart';
import 'package:ieee_movieapp/Pages/Intro/IntroWidgets/page1_onboard.dart';
import 'package:ieee_movieapp/Pages/Intro/intro_page.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../Constants/fonts.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  // Tracks which page we are on
  final PageController _controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        PageView(
          controller: _controller,
          children: [
            const Page1OnBoard(),
            Column(children: [
              Expanded(
                child: SizedBox(
                  child: Image.asset(
                    "images/GotGV3.jpg",
                    fit: BoxFit.cover,
                  ),
                ),
              )
            ]),
            Column(children: [
              Expanded(
                child: SizedBox(
                  child: Image.asset(
                    "images/turningred.jpg",
                    fit: BoxFit.cover,
                  ),
                ),
              )
            ]),
          ],
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            SmoothPageIndicator(
              controller: _controller,
              count: 3,
              effect: const ExpandingDotsEffect(
                  activeDotColor: secondaryColor, dotColor: txtColor),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: SizedBox(
                height: 50,
                width: double.infinity,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        elevation: 0,
                        backgroundColor: secondaryColor,
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(25)),
                        )),
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const Intro()));
                    },
                    child: const Text("Get Started",
                        style: TextStyle(fontFamily: medium))),
              ),
            ),
          ],
        ),
      ]),
    );
  }
}
