import 'package:flutter/material.dart';
import 'package:ieee_movieapp/Constants/colors.dart';
import 'package:ieee_movieapp/Constants/fonts.dart';
import 'package:ieee_movieapp/Pages/Profile/ProfileWidgets/profimg.dart';
import 'package:ieee_movieapp/Pages/Profile/ProfileWidgets/skip_cont_buttons_fill.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';

import 'ProfileWidgets/dropdown.dart';

class Fillprof extends StatelessWidget {
  const Fillprof({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Fill your profile",
          style: TextStyle(color: txtColor, fontFamily: medium),
        ),
        backgroundColor: primaryColor,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          tooltip: 'previous page',
          onPressed: () {},
        ),
      ), //AppBar
      body: Container(
        padding: const EdgeInsets.only(left: 15, top: 20, right: 15),
/////////////////Profimg dart file///////////
        child: SingleChildScrollView(
          child: Column(
            children: [
              const Profimg(),
              const SizedBox(
                height: 10,
              ),
              const TextField(
                cursorColor: secondaryColor,
                style: TextStyle(color: txtColor),
                decoration: InputDecoration(hintText: "Full Name"),
              ),
              const SizedBox(
                height: 10,
              ),
              const TextField(
                cursorColor: secondaryColor,
                style: TextStyle(color: txtColor),
                decoration: InputDecoration(hintText: "Nickname"),
              ),
              const SizedBox(
                height: 10,
              ),
              const TextField(
                cursorColor: secondaryColor,
                style: TextStyle(color: txtColor),
                decoration: InputDecoration(
                    hintText: "Email", suffixIcon: Icon(Icons.email_outlined)),
              ),
              const SizedBox(
                height: 10,
              ),
              InternationalPhoneNumberInput(
                initialValue: PhoneNumber(isoCode: "EG"),
                autoValidateMode: AutovalidateMode.onUserInteraction,
                selectorTextStyle:
                    const TextStyle(color: txtColor, fontFamily: medium),
                selectorConfig: const SelectorConfig(
                    setSelectorButtonAsPrefixIcon: true, leadingPadding: 0),
                textStyle: const TextStyle(color: txtColor, fontFamily: medium),
                spaceBetweenSelectorAndTextField: 0,
                onInputChanged: (value) {},
                inputBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: const BorderSide(
                    color: secondaryColor,
                  ),
                ),
              ),
              const GenderDropDown(),
///////////////////////dropdown dart file////////////////
              const SizedBox(
                height: 22,
              ),
              const SkipContButtonsFill(),
            ],
          ),
        ),
      ),
    );
  }
}
