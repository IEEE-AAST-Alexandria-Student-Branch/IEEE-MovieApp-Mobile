import 'package:flutter/material.dart';
import 'package:ieee_movieapp/Constants/colors.dart';
import 'package:ieee_movieapp/Constants/fonts.dart';
import 'package:ieee_movieapp/Pages/Intrests/interests_page.dart';
import 'package:ieee_movieapp/Pages/Intro/IntroWidgets/cont_buttons.dart';
import 'package:ieee_movieapp/Pages/loginSignup/login.dart';

import '../loginSignup/sign_up.dart';

class Intro extends StatelessWidget {
  const Intro({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: const [
                BackButton(
                  color: txtColor,
                ),
              ],
            ),
            // Art on top
            SizedBox(
              width: 220,
              height: 220,
              child: Image.asset(
                "images/letsInLady.png",
                fit: BoxFit.cover,
              ),
            ),
            // Main text
            const Padding(
              padding: EdgeInsets.only(bottom: 20),
              child: Text(
                "Let's you in",
                style: TextStyle(
                    color: txtColor, fontSize: 30, fontFamily: medium),
              ),
            ),
            // 3 contiune buttons
            const ContButtons(),
            // Or divider
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 25),
              child: Row(
                children: const [
                  Expanded(
                      child: Divider(
                    thickness: 1,
                    color: borderColor,
                  )),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Text(
                      "or",
                      style: TextStyle(color: txtColor, fontFamily: small),
                    ),
                  ),
                  Expanded(
                      child: Divider(
                    thickness: 1,
                    color: borderColor,
                  )),
                ],
              ),
            ),
            // Password sign in
            SizedBox(
              height: 50,
              width: double.infinity,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      elevation: 0,
                      backgroundColor: secondaryColor,
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(25)),
                      )),
                  onPressed: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => const Login()));
                  },
                  child: const Text("Sign in with password",
                      style: TextStyle(fontFamily: medium))),
            ),
            // Signup
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Don't have an account?",
                    style: TextStyle(
                        color: txtColor, fontFamily: small, fontSize: 12),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const SignUp()));
                    },
                    child: const Text(
                      "Sign up",
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
    );
  }
}
