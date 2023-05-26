import 'package:flutter/material.dart';

import '../../Constants/colors.dart';

class Nwpass extends StatelessWidget {
  const Nwpass({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        TextField(
          cursorColor: secondaryColor,
          style: TextStyle(color: txtColor),
          decoration: InputDecoration(
              hintText: "Enter new Password", prefixIcon: Icon(Icons.lock)),
          obscureText: true,
          enableSuggestions: false,
          autocorrect: false,
        ),
        SizedBox(
          height: 10,
        ),
        TextField(
          cursorColor: secondaryColor,
          style: TextStyle(color: txtColor),
          decoration: InputDecoration(
              hintText: "Renter New Password", prefixIcon: Icon(Icons.lock)),
          obscureText: true,
          enableSuggestions: false,
          autocorrect: false,
        ),
      ],
    );
  }
}
