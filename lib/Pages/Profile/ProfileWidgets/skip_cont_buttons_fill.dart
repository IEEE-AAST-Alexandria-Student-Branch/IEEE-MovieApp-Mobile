import 'package:flutter/material.dart';

import '../../../Constants/colors.dart';
import '../../../Constants/fonts.dart';

class SkipContButtonsFill extends StatelessWidget {
  const SkipContButtonsFill({super.key});

  final double buttonHeight = 45;
  final double buttonWidth = 150;
  final double buttonGap = 20;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          height: buttonHeight,
          width: buttonWidth,
          child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  elevation: 0,
                  backgroundColor: secButton,
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(25)),
                  )),
              onPressed: () {},
              child: const Text("Skip", style: TextStyle(fontFamily: medium))),
        ),
        SizedBox(
          width: buttonGap,
        ),
        SizedBox(
          height: buttonHeight,
          width: buttonWidth,
          child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  elevation: 0,
                  backgroundColor: secondaryColor,
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(25)),
                  )),
              onPressed: () {},
              child:
                  const Text("Contiune", style: TextStyle(fontFamily: medium))),
        ),
      ],
    );
  }
}
