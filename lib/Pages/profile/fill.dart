import 'package:flutter/material.dart';
import 'package:ieee_movieapp/Constants/colors.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';
import 'package:flutter/services.dart';
import 'dropdown.dart';


class Fillprof extends StatelessWidget {
  const Fillprof({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: const Text("Fill your profile"),
        actions: const <Widget>[], //<Widget>[]
        elevation: 30.0,
        backgroundColor: primaryColor,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          tooltip: 'previous page',
          onPressed: () {},
        ),

      ), //AppBar

      body:
      Container(
        padding: const EdgeInsets.only(left: 15,top: 20,right: 15),
/////////////////Profimg dart file///////////
        child: SingleChildScrollView(
          child: Column(
           children: <Widget>[
              fullnamefield(),
              nick(),
             const TextField(
               decoration: InputDecoration(
                 focusedBorder: OutlineInputBorder(
                   borderSide: BorderSide(
                     color: secondaryColor,
                   ),
                 ),
                 contentPadding: EdgeInsets.all(22),
                 filled: true,
                 fillColor: Colors.white12,
                 border: OutlineInputBorder(),
                 labelText: "Email",
                 hintText: "andrew1@yourdomain.com",
                 suffixIcon: Icon(Icons.check_box_outline_blank),
               ),
             ),
             InternationalPhoneNumberInput(
               onInputChanged: (value) {  },
                 inputBorder: const OutlineInputBorder(
                   borderSide: BorderSide(
                     color: secondaryColor,
                   ),
                 ),
                 inputDecoration: const InputDecoration(
                   filled: true,
                   fillColor: Colors.white12,
                 contentPadding: EdgeInsets.only(bottom: 15,left: 0),
               ),
             ),
///////////////////////dropdown dart file////////////////
             const SizedBox(height: 22,),
             Row(
               mainAxisAlignment: MainAxisAlignment.center,
               children: <Widget>[
                 Padding(
                   padding: const EdgeInsets.only(top: 50, right: 30),
                   child: ElevatedButton(
                     style: ElevatedButton.styleFrom(
                     backgroundColor: Colors.white12,), // Background color
                     child: const Text('Skip'),
                     onPressed: () {
                     },
                   ),
                 ),
                 Padding(
                   padding: const EdgeInsets.only(top: 50, left: 30),
                     child: ElevatedButton(
                       style: ElevatedButton.styleFrom(
                         backgroundColor: secondaryColor,), // Background color
                       child: const Text('Continue'),
                       onPressed: () {
                       },
                   ),
                 ),
               ],
             ),
           ],
          ),
        ),
      ),);
}







Widget fullnamefield() {
  return TextFormField(
    decoration: const InputDecoration(
     filled: true,
     fillColor: Colors.white12,
      border: OutlineInputBorder(
        borderSide: BorderSide(
          color: Colors.white10,
        ),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: secondaryColor,
        ),
      ),
      prefixIcon: Icon(
      Icons.person,
      color: secondaryColor,),
      labelText: "Full name",
      hintText: "Andrew Ainsley",
    ),
  );
}

  Widget nick() {
    return TextFormField(
      decoration: const InputDecoration(
        filled: true,
        fillColor: Colors.white12,
          border: OutlineInputBorder(
            borderSide: BorderSide(
            color: Colors.white12,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: secondaryColor,
            ),
          ),
          prefixIcon: Icon(
            Icons.person_outlined,
            color: secondaryColor,
          ),
    labelText: "Nickname",
    hintText: "Andrew",
      ),
    );
  }

  DropdownMenuItem<String> buildMenuItem(String item) =>
      DropdownMenuItem(
          child: Text(
            item,
      ),);
}