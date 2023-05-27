import 'package:flutter/material.dart';
import 'package:ieee_movieapp/Constants/colors.dart';
import 'package:ieee_movieapp/Constants/fonts.dart';
import 'package:ieee_movieapp/Pages/Intrests/InterestsWidgets/skip_cont_buttons.dart';

import 'interests_data.dart';

class Interests extends StatefulWidget {
  const Interests({super.key});

  @override
  State<Interests> createState() => _InterestsState();
}

class _InterestsState extends State<Interests> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: const [
                BackButton(
                  color: txtColor,
                ),
                Text("Choose Your Interest",
                    style: TextStyle(
                        color: txtColor, fontFamily: big, fontSize: 20)),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Wrap(
                alignment: WrapAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 10),
                    child: Text(
                        "Choose your interests and get the best movie recommendations. Dont worry. you can always change it later.",
                        style: TextStyle(
                            color: txtColor, fontFamily: small, fontSize: 15)),
                  ),
                  for (int i = 0; i < interestsList.length; i++)
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 5),
                      child: ChoiceChip(
                        label: Text(
                          interestsList[i].name,
                        ),
                        labelStyle: TextStyle(
                            color: (interestsList[i].isInterested
                                ? txtColor
                                : secondaryColor),
                            fontFamily: small,
                            fontSize: 15),
                        selected: interestsList[i].isInterested,
                        onSelected: (newState) {
                          setState(() {
                            interestsList[i].isInterested =
                                !interestsList[i].isInterested;
                          });
                        },
                      ),
                    ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 20),
              child: SkipContButtons(),
            )
          ],
        ),
      ),
    );
  }
}
