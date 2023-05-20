import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:ieee_movieapp/Constants/colors.dart';
import 'package:ieee_movieapp/Constants/fonts.dart';
class Ddm extends StatefulWidget {
  const Ddm({Key? key}) : super(key: key);

  @override
  State<Ddm> createState() => _Ddm();
}

class _Ddm extends State<Ddm>{
  String dropdownValue = 'Male';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
      Center(
      child: DropdownButton<String>(
          value: dropdownValue,
          underline: Container(
            height: 1,
            color: secondaryColor,
          ),
          onChanged: (String? newValue) {
          setState(() {
            dropdownValue = newValue!;
          });
          },
        items: const [
          DropdownMenuItem<String>(
            value: 'Male',
            child: Text('Male'),
          ),
          DropdownMenuItem<String>(
            value: 'Female',
            child: Text('Female'),
          )
        ],
      ),
    ),);
  }}