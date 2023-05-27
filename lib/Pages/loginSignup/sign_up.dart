import 'package:flutter/material.dart';
import 'package:ieee_movieapp/Constants/colors.dart';
import 'package:ieee_movieapp/Constants/fonts.dart';
import 'package:ieee_movieapp/Pages/loginSignup/LoginWidgets/email_pass.dart';
import 'package:ieee_movieapp/Pages/loginSignup/LoginWidgets/login_icons.dart';
import 'package:ieee_movieapp/Pages/loginSignup/dialogue.dart';
import 'package:ieee_movieapp/Pages/loginSignup/login.dart';

bool rememberMe = false;
/////a page to create your account/sign up
class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  bool? rememberMe = false;

  void _onRememberMeChanged(bool? newValue) => setState(() {
        rememberMe = newValue;
      });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          elevation: 0,
          backgroundColor: primaryColor,
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.arrow_back),
            color: fieldTxtColor,
            iconSize: 30,
            padding: const EdgeInsets.fromLTRB(10, 15, 0, 0),
          )),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: SingleChildScrollView(
          child: Column(
            children: [
              // Image and text at the top
              Column(
                children: [
                  SizedBox(
                    //TODO: make size dynamic
                    height: 120,
                    width: 120,
                    /////logo
                    child: Image.asset("images/red_ieee.png"),
                  ),
                  const Padding(
                      padding: EdgeInsets.all(20.0),
                      child: Text(
                        'Create Your Account',
                        style: TextStyle(
                          color: txtColor,
                          fontFamily: medium,
                          fontSize: 25,
                        ),
                      )),
                ],
              ),
              // Data entry fields
              const EmailPass(),
              // Remeber me checkbox
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  //////remember me and checkbox
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
                  )
                ],
              ),
              // Sign in button
              TextButton(
                style: TextButton.styleFrom(
                    fixedSize: const Size(double.maxFinite, 50),
                    foregroundColor: txtColor,
                    backgroundColor: secondaryColor,
                    textStyle:
                        const TextStyle(fontSize: 20, fontFamily: medium),
                    shape: (RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25),
                        side: const BorderSide(color: secondaryColor)))),
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return const Dialogue();
                    },
                  );
                },
                child: const Text('Sign up'),
              ),
              const SizedBox(
                height: 35,
              ),
              // Continue divider
              Row(
                children: const [
                  Expanded(
                    child: Divider(
                      thickness: 1,
                      color: borderColor,
                    ),
                  ),
                  ///////continue with bar
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Text(
                      'or continue with',
                      style: TextStyle(
                          color: txtColor, fontSize: 16, fontFamily: small),
                    ),
                  ),
                  Expanded(
                    child: Divider(
                      thickness: 1,
                      color: borderColor,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              // Row of icons
              const LoginIcons(),
              // No account area
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "Already have an account?",
                      style: TextStyle(color: txtColor, fontFamily: small),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.of(context).pushReplacement(MaterialPageRoute(
                            builder: (context) => const Login()));
                      },
                      child: const Text(
                        "Sign in",
                        style: TextStyle(
                            color: secondaryColor,
                            fontFamily: small,
                            fontSize: 12),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
