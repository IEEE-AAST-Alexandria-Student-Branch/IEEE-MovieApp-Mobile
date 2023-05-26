import 'package:flutter/material.dart';
import 'package:ieee_movieapp/Constants/colors.dart';

class Loading extends StatefulWidget {
  const Loading({Key? key}) : super(key: key);

  @override
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "images/red_ieee.png",
              width: 300,
            ),
            const SizedBox(
              height: 50,
            ),
            const CircularProgressIndicator(
              valueColor: AlwaysStoppedAnimation<Color>(secondaryColor),
            ),
          ],
        ),
      ),
    );
  }
}
