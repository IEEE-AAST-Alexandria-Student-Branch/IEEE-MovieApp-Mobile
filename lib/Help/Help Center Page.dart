import 'package:flutter/material.dart';
import 'package:ieee_movieapp/Constants/colors.dart';

import '../Pages/Profile/Profile Page.dart';

class Help extends StatefulWidget {
  const Help({Key? key}) : super(key: key);

  @override
  State<Help> createState() => _HelpState();
}

class _HelpState extends State<Help> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: const Icon(
                Icons.arrow_back_outlined,
                color: txtColor,
                size: 22, // Changing Drawer Icon Size
              ),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Profile(),
                    ));
              },
            );
          },
        ),
        backgroundColor: primaryColor,
        title: const Text(
          "Help Center",
          style: TextStyle(color: txtColor, fontWeight: FontWeight.normal),
        ),
      ),
    );
  }
}
