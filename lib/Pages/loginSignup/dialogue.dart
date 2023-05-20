import 'package:flutter/material.dart';
import 'package:ieee_movieapp/Constants/colors.dart';

class Dialogue extends StatefulWidget {
  const Dialogue({super.key});

  @override
  _DialogueState createState() => _DialogueState();
}

class _DialogueState extends State<Dialogue> {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: primaryColor,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(25),
        ),
      ),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Image.asset('images/red_ieee.png'),
          const SizedBox(height: 10.0),
          Container(
            alignment: Alignment.center,
            height: 45.0,
            child: const Text(
              'Congratulations',
              style: TextStyle(
                color: secondaryColor,
                fontSize: 20,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          const SizedBox(height: 30.0),
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          ),
        ],
      ),
    );
  }
}
