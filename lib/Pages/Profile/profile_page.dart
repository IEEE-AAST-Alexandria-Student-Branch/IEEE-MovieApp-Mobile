import 'package:flutter/material.dart';
import '../../Constants/colors.dart';
import '../../Constants/fonts.dart';
import 'profile_data.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    double screenHigh = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(
            height: 50,
          ),
          // Icon and page name at the top
          Row(
            children: [
              Container(
                margin: const EdgeInsets.only(left: 10),
                child: Image.asset(
                  "images/red_ieee.png",
                  width: 40,
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              const Text(
                "Profile",
                style:
                    TextStyle(color: txtColor, fontFamily: small, fontSize: 20),
              ),
            ],
          ),
          const Spacer(),
          // Profile picture and edit button
          Center(
            child: Stack(
              alignment: AlignmentDirectional.bottomEnd,
              children: [
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Colors.white),
                  child: Image.asset(
                    "images/profile.png",
                    width: 100,
                  ),
                ),
                Container(
                  decoration: const BoxDecoration(color: secondaryColor),
                  child: const Icon(Icons.edit),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          // User info
          Text(
            profilename,
            style: const TextStyle(
                color: txtColor, fontFamily: small, fontSize: 20),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            profileemail,
            style: TextStyle(
                color: txtColor.withOpacity(0.7),
                fontFamily: small,
                fontSize: 15),
          ),
          const SizedBox(
            height: 15,
          ),
          const Spacer(),
          // Button list
          SizedBox(
            height: screenHigh / 2,
            child: ListView.builder(
                itemCount: dataIcons.length,
                scrollDirection: Axis.vertical,
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () {
                      // TODO: fix buttons
                      // button destination
                    },
                    child: Container(
                      margin: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 5),
                      child: Row(
                        children: [
                          dataIcons[index],
                          const SizedBox(
                            width: 10,
                          ),
                          Text(
                            dataText[index],
                            style: TextStyle(
                                color: txtColor.withOpacity(0.7),
                                fontFamily: small,
                                fontSize: 20),
                          ),
                          const Spacer(),
                          dataText[index] == "Dark Mode"
                              ? Switch(
                                  value: switchvalue,
                                  onChanged: (value) {
                                    setState(() {
                                      switchvalue = value;
                                    });
                                  },
                                  activeColor: Colors.white,
                                  inactiveTrackColor: txtColor.withOpacity(0.7),
                                  activeTrackColor: secondaryColor,
                                )
                              : Icon(Icons.arrow_forward_ios,
                                  color: txtColor.withOpacity(0.7)),
                        ],
                      ),
                    ),
                  );
                }),
          ),
        ],
      ),
    );
  }
}
