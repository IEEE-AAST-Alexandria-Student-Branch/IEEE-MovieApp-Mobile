import 'package:flutter/material.dart';
import '../../../../Constants/colors.dart';

class TopOfStack extends StatefulWidget {
  const TopOfStack({Key? key}) : super(key: key);

  @override
  State<TopOfStack> createState() => _TopOfStackState();
}

class _TopOfStackState extends State<TopOfStack> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 60),
      child: Row(
        children: [
          Container(
            margin: const EdgeInsets.only(left: 20),
            child: Image.asset(
              "images/red_ieee.png",
              width: 40,
            ),
          ),
          const Spacer(),
          Container(
              margin: const EdgeInsets.only(right: 10),
              child: const Icon(
                Icons.search,
                size: 40,
                color: txtColor,
              )),
          Container(
              margin: const EdgeInsets.only(right: 10),
              child: const Icon(
                Icons.notifications_none,
                size: 40,
                color: txtColor,
              )),
        ],
      ),
    );
  }
}
