import 'package:flutter/material.dart';
import 'package:ieee_movieapp/Constants/colors.dart';

class Profimg extends StatelessWidget {
  const Profimg({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        alignment: AlignmentDirectional.bottomEnd,
        children: [
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50), color: Colors.white),
            child: Image.asset(
              "images/profile.png",
              width: 100,
            ),
          ),
          Container(
            decoration: BoxDecoration(
              color: secondaryColor,
              borderRadius: BorderRadius.circular(3),
            ),
            child: const Icon(Icons.edit),
          ),
        ],
      ),
    );
  }
}
