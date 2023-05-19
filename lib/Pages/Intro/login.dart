import 'package:flutter/material.dart';
import 'package:ieee_movieapp/Constants/colors.dart';
import 'package:ieee_movieapp/Constants/fonts.dart';
import 'package:ieee_movieapp/Pages/Intro/dialogue.dart';

import 'package:flutter_signin_button/flutter_signin_button.dart';
import 'package:material_dialogs/material_dialogs.dart';

import 'package:ieee_movieapp/Constants/themes.dart';
bool rememberMe = false;

class Intro1 extends StatefulWidget {
  const Intro1({Key? key}) : super(key: key);

  @override
  State<Intro1> createState() => _Intro1State();
}

class _Intro1State extends State<Intro1> {
  bool? rememberMe = false;

  void _onRememberMeChanged(bool? newValue) => setState(() {
    rememberMe = newValue;

  });
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: primaryColor,
      appBar: AppBar(
          backgroundColor: primaryColor,
          leading: IconButton(
            onPressed: (){
              Navigator.pop(context);
            },

            icon:Icon(Icons.arrow_back),
            color: fieldTxtColor,
            iconSize: 30,
            padding: EdgeInsets.fromLTRB(10, 15, 0, 0),
            //replace with our own icon data.
          )
      ),
      body:
      Center(
        child: Column(

          children: [
          const SizedBox(height: 10,),
        Container(
          height: 120.0,
          width: 120.0,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/red ieee.png'),
              fit: BoxFit.fill,
            ),
          ),
        ),

        Padding(
            padding: EdgeInsets.all(30.0),
            child:const Text('Login to your account',style: TextStyle(

              color: txtColor,
              fontStyle: FontStyle.normal,
              fontSize:34 ,

            ),
            )
        ),
        TextField(
          decoration: InputDecoration(
              labelText: "Email",
              prefixIcon: Icon(Icons.email),
              labelStyle:
              TextStyle(
                color: txtColor,
                fontSize: 15,
              ),
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
              )
          ),

        ),
        const SizedBox(height: 20,),
        TextField(

          decoration: InputDecoration(
            labelText: "Password"  ,
            prefixIcon: Icon(Icons.lock),
            labelStyle:
            TextStyle(
              color: txtColor,
              fontSize: 15,
            ),
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

            ),
          ),
          obscureText: true,
          enableSuggestions: false,
          autocorrect: false,
        ),

        CheckboxListTile(
            title: Text("Remeber me", style: TextStyle(

              color: txtColor,
              fontStyle: FontStyle.normal,
              fontSize:15 ,

            ),),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(100
              )),
          value: rememberMe,
          onChanged: _onRememberMeChanged,

          controlAffinity: ListTileControlAffinity.leading,
          contentPadding: EdgeInsets.fromLTRB(120, 20, 30,0 ),
          side: MaterialStateBorderSide.resolveWith(
                (states) => BorderSide(width: 1.0, color: Colors.red),
          ),
      ),
            TextButton(
              style: TextButton.styleFrom(
                  fixedSize: const Size(380, 40),
                  foregroundColor: txtColor,
                  backgroundColor: secondaryColor,
                  textStyle: const TextStyle(fontSize: 20),
                  shape: (
                      RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18.0),
                          side: BorderSide(color: Colors.red)
                      )
                  )
              ),


              onPressed: () {
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return VoicePay();
                  },
                );
              },
              child: Text('Login '),

            ),
            const SizedBox(height: 20,),
            Text ('Forgot Password',style: TextStyle(

              color: secondaryColor,
              fontStyle: FontStyle.normal,
              fontSize:20 ,

            ),
            ),
            const SizedBox(height: 15,),
          Row(
            children: [
              Expanded(
                child: Divider(
                  thickness: 0.5,
                  color: Colors.grey[400],
                ),
              ),
              const Padding(
                padding:EdgeInsets.fromLTRB(0, 0, 0,0 ),
                child: Text(
                  'Or Continue with',
                  style: TextStyle(
                      color: Colors.white, fontSize: 16),
                ),
              ),
              Expanded(
                child: Divider(
                  thickness: 0.5,
                  color: Colors.grey[400],
                ),
              ),
              ],
          ),
            const SizedBox(height: 10,),
          Row(
            children: [
              Padding(
                padding: EdgeInsets.fromLTRB(105, 10, 10, 10),
                child:
                  SignInButton
                    (
                    Buttons.Facebook,
                    onPressed: (){},
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(100
                        )),
                    mini: true,

                  ),
      ),

              Padding(
                padding: EdgeInsets.all(10),
                child:
                SignInButton
                  (
                  Buttons.Apple,
                  onPressed: (){},
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(100
                      )),
                  mini: true,

                ),
              ),
              Padding(
                padding: EdgeInsets.all(10),
                child:
                SignInButton
                  (
                  Buttons.Microsoft,
                  onPressed: (){},
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(100
                      )),
                  mini: true,

                ),
              ),
                ],
              ),
            Row(
              children: [
                Padding(
                    padding: EdgeInsets.fromLTRB(80, 10, 10, 10),
                    child:
                    Text("Do not have an account",style:TextStyle(
                      color: fieldTxtColor,
                    ) ,)

                ),
                Padding(
                    padding: EdgeInsets.all(10),
                    child:
                    Text("Sign up",style:TextStyle(
                      color: secondaryColor,
                    ) ,),

                )
              ],
            )
            ],
          )


    ),

    );


  }
  }

