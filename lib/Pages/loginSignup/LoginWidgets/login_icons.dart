import 'package:flutter/material.dart';

import '../../../Constants/colors.dart';

class LoginIcons extends StatelessWidget {
  const LoginIcons({super.key});

  final double buttonHeight = 50;
  final double buttonGap = 15;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          height: buttonHeight,
          child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  elevation: 0,
                  backgroundColor: fieldColor,
                  shape: const RoundedRectangleBorder(
                    side: BorderSide(width: 1, color: borderColor),
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                  )),
              onPressed: () {},
              child: SizedBox(
                width: 20,
                height: 20,
                child: Image.asset(
                  "images/facebookLogo.png",
                  fit: BoxFit.cover,
                ),
              )),
        ),
        SizedBox(
          width: buttonGap,
        ),
        SizedBox(
          height: buttonHeight,
          child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  elevation: 0,
                  backgroundColor: fieldColor,
                  shape: const RoundedRectangleBorder(
                    side: BorderSide(width: 1, color: borderColor),
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                  )),
              onPressed: () {},
              child: SizedBox(
                width: 20,
                height: 20,
                child: Image.asset(
                  "images/googleLogo.png",
                  fit: BoxFit.cover,
                ),
              )),
        ),
        SizedBox(
          width: buttonGap,
        ),
        SizedBox(
          height: buttonHeight,
          child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  elevation: 0,
                  backgroundColor: fieldColor,
                  shape: const RoundedRectangleBorder(
                    side: BorderSide(width: 1, color: borderColor),
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                  )),
              onPressed: () {},
              child: SizedBox(
                width: 20,
                height: 20,
                child: Image.asset(
                  "images/appleLogo.png",
                  fit: BoxFit.contain,
                ),
              )),
        ),
      ],
    );
  }
}
