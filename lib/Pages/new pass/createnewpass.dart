import 'package:flutter/material.dart';
import 'package:ieee_movieapp/Constants/colors.dart';
import 'package:ieee_movieapp/Constants/fonts.dart';
import 'package:ieee_movieapp/Pages/Profile/ProfileWidgets/profimg.dart';
import 'package:ieee_movieapp/Pages/Profile/ProfileWidgets/skip_cont_buttons_fill.dart';
import 'package:ieee_movieapp/Pages/new%20pass/continuebutton.dart';
import 'package:ieee_movieapp/Pages/new%20pass/nepasswidget.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';

bool rememberMe = false;

class Newpass extends StatefulWidget {
  const Newpass({Key? key}) : super(key: key);

  @override
  State<Newpass> createState() => _Cnewpass();
}

class _Cnewpass extends State<Newpass> {
  bool? rememberMe = false;

  void _onRememberMeChanged(bool? newValue) => setState(() {
    rememberMe = newValue;
  });

//this is the creating a new password page

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Create New Password",
          style: TextStyle(color: txtColor, fontFamily: medium),
        ),
        backgroundColor: primaryColor,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          tooltip: 'previous page',
          onPressed: () {},
        ),
    ),
      body: Padding(
    padding: const EdgeInsets.symmetric(horizontal: 10),
    child: SingleChildScrollView(
      child: Column(
        children: [
      // Image and text at the top
      Column(
      children: [
      Container(
      height: 300,
        width: 300,
        child: Image.asset("images/newpass.png"),
      ),
      const Padding(
          padding: EdgeInsets.all(20.0),
          child: Text(
            'Create Your New Password',
            style: TextStyle(
              color: txtColor,
              fontFamily: medium,
              fontSize: 20,
            ),
          )),
      ],
    ),
          const Nwpass(),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Checkbox(
                value: rememberMe,
                onChanged: _onRememberMeChanged,
                activeColor: secondaryColor,
                shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(6))),
                side: const BorderSide(width: 2, color: secondaryColor),
              ),
              const Text(
                "Remember me",
                style: TextStyle(fontFamily: small, color: txtColor),
              ),
              SizedBox(
                width: 20,
                height:50,
              ),
 /////////continue button

              const Contbutton()
            ],

          ),
      ],
    ),
    )
    )
    );
    }}