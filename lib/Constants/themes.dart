import 'package:flutter/material.dart';

import 'colors.dart';
import 'fonts.dart';

// Themeing for the TextFields
var textFieldTheme = InputDecorationTheme(
    // Switches the prefix icon color based on focus
    prefixIconColor: MaterialStateColor.resolveWith((states) =>
        states.contains(MaterialState.focused)
            ? secondaryColor
            : fieldTxtColor),
    hintStyle: const TextStyle(color: fieldTxtColor, fontFamily: small),
    filled: true,
    // Switches the fill color based on focus
    fillColor: MaterialStateColor.resolveWith((states) =>
        states.contains(MaterialState.focused)
            ? higlightedFieldColor
            : fieldColor),
    focusColor: secondaryColor,
    // Enabled (unselected), and focused border colors and shapes
    enabledBorder: OutlineInputBorder(
      borderSide: const BorderSide(width: 3, color: primaryColor),
      borderRadius: BorderRadius.circular(15),
    ),
    focusedBorder: OutlineInputBorder(
      borderSide: const BorderSide(width: 3, color: secondaryColor),
      borderRadius: BorderRadius.circular(15),
    ));

var chipButtonTheme = const ChipThemeData(
  side: BorderSide(width: 2, color: secondaryColor),
  labelStyle: TextStyle(fontFamily: small, fontSize: 15),
  backgroundColor: primaryColor,
  selectedColor: secondaryColor,
);
