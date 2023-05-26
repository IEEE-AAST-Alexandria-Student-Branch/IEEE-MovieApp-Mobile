import 'package:flutter/material.dart';

import '../../../Constants/colors.dart';
import '../../../Constants/fonts.dart';


class Contbutton extends StatelessWidget {
  const Contbutton({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          height: 50,
          width: 380,
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