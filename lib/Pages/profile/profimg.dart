import 'package:flutter/material.dart';
import 'package:ieee_movieapp/Constants/colors.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';
import 'package:flutter/services.dart';
import 'dropdown.dart';


class Profimg extends StatelessWidget {
  const Profimg({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:
Container(
padding: const EdgeInsets.only(left: 15,top: 20,right: 15),
child:GestureDetector(
  onTap:(){
    FocusScope.of(context).unfocus();
  },
  child: ListView(
    children: [
      Center(
        child: Stack(
          alignment: AlignmentDirectional.bottomEnd,
          children: [
            Container(
              width: 130,
              height: 130,
              decoration: BoxDecoration(
                border: Border.all(width: 0.1),
                shape: BoxShape.circle,
                image: const DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage('https://cdn.pixabay.com/photo/2015/10/05/22/37/blank-profile-picture-973460_1280.png'),
                ),
              ),
            ),
            Container(
              child: Icon(Icons.edit),
              decoration: BoxDecoration(color: secondaryColor),
            ),
          ],
        ),
      )
    ],
  ),
),),);}}