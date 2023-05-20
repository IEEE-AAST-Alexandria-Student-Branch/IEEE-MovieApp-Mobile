import 'package:flutter/material.dart';
import 'package:ieee_movieapp/Constants/colors.dart';

class GenderDropDown extends StatefulWidget {
  const GenderDropDown({Key? key}) : super(key: key);

  @override
  State<GenderDropDown> createState() => _GenderDropDown();
}

class _GenderDropDown extends State<GenderDropDown> {
  String dropdownValue = 'Male';

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
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
    );
  }
}
