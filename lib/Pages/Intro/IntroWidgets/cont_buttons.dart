import 'package:flutter/material.dart';

import '../../../Constants/colors.dart';
import '../../../Constants/fonts.dart';

class ContButtons extends StatelessWidget {
  const ContButtons({super.key});

  final double buttonHeight = 50;
  final double buttonWidth = double.maxFinite;
  final double iconSize = 20;

  // Vertical gap between buttons
  final double buttonGap = 5;
  // Horizontal gap between Icon and text
  final double iconGap = 8;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Facebook button
        Padding(
          padding: EdgeInsets.symmetric(vertical: buttonGap),
          child: SizedBox(
            height: buttonHeight,
            width: buttonWidth,
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    elevation: 0,
                    backgroundColor: fieldColor,
                    shape: const RoundedRectangleBorder(
                      side: BorderSide(width: 1, color: borderColor),
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                    )),
                onPressed: () {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(right: iconGap),
                      child: SizedBox(
                        width: iconSize,
                        height: iconSize,
                        child: Image.asset(
                          "images/facebookLogo.png",
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    const Text("Contiune with Facebook",
                        style: TextStyle(fontFamily: medium)),
                  ],
                )),
          ),
        ),
        // Google button
        Padding(
          padding: EdgeInsets.symmetric(vertical: buttonGap),
          child: SizedBox(
            height: buttonHeight,
            width: buttonWidth,
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    elevation: 0,
                    backgroundColor: fieldColor,
                    shape: const RoundedRectangleBorder(
                      side: BorderSide(width: 1, color: borderColor),
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                    )),
                onPressed: () {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(right: iconGap),
                      child: SizedBox(
                        width: iconSize,
                        height: iconSize,
                        child: Image.asset(
                          "images/googleLogo.png",
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    const Text("Contiune with Google",
                        style: TextStyle(fontFamily: medium)),
                  ],
                )),
          ),
        ),
        // Apple button
        Padding(
          padding: EdgeInsets.symmetric(vertical: buttonGap),
          child: SizedBox(
            height: buttonHeight,
            width: buttonWidth,
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    elevation: 0,
                    backgroundColor: fieldColor,
                    shape: const RoundedRectangleBorder(
                      side: BorderSide(width: 1, color: borderColor),
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                    )),
                onPressed: () {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(right: iconGap),
                      child: SizedBox(
                        height: iconSize,
                        width: iconSize,
                        child: Image.asset(
                          "images/appleLogo.png",
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                    const Text(
                      "Contiune with Apple",
                      style: TextStyle(fontFamily: medium, color: txtColor),
                    ),
                  ],
                )),
          ),
        ),
      ],
    );
  }
}
