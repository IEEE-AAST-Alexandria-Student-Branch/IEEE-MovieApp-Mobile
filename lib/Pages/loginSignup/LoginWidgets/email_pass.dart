import 'package:flutter/material.dart';

import '../../../Constants/colors.dart';

class EmailPass extends StatelessWidget {
  const EmailPass({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        TextField(
          cursorColor: secondaryColor,
          style: TextStyle(color: txtColor),
          decoration:
              InputDecoration(hintText: "Email", prefixIcon: Icon(Icons.email)),
        ),
        SizedBox(
          height: 10,
        ),
        TextField(
          cursorColor: secondaryColor,
          style: TextStyle(color: txtColor),
          decoration: InputDecoration(
              hintText: "Password", prefixIcon: Icon(Icons.lock)),
          obscureText: true,
          enableSuggestions: false,
          autocorrect: false,
        ),
      ],
    );
  }
}
