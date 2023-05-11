import 'package:flutter/material.dart';

import '../../Constants/colors.dart';
import '../../Constants/fonts.dart';
import '../../Help/Help Center Page.dart';
import 'Profile Data.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHigh = MediaQuery.of(context).size.height;
    double iconsize = screenWidth / 12;
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 50,
          ),
          Row(
            children: [
              Container(
                child: Image.asset(
                  "images/red_ieee.png",
                  width: 40,
                ),
                margin: EdgeInsets.only(left: 10),
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                "Profile",
                style:
                    TextStyle(color: txtColor, fontFamily: small, fontSize: 20),
              ),
            ],
          ),
          Center(
            child: Stack(
              alignment: AlignmentDirectional.bottomEnd,
              children: [
                Container(
                  child: Image.asset(
                    "images/profile.png",
                    width: 100,
                  ),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Colors.white),
                ),
                Container(
                  child: Icon(Icons.edit),
                  decoration: BoxDecoration(color: secondaryColor),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Text(
            profilename,
            style: TextStyle(color: txtColor, fontFamily: small, fontSize: 20),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            profileemail,
            style: TextStyle(
                color: txtColor.withOpacity(0.7),
                fontFamily: small,
                fontSize: 15),
          ),
          SizedBox(
            height: 15,
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              border: Border.all(color: secondaryColor, width: 3),
            ),
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
              child: Row(children: [
                Image.asset(
                  "images/crown.png",
                  color: secondaryColor,
                  width: 70,
                ),
                SizedBox(
                  width: 20,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Join Premium!",
                      style: TextStyle(
                          color: secondaryColor,
                          fontFamily: small,
                          fontSize: 20),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Enjoy watching full HD movies,\nwithout restrictions and without ads",
                      style: TextStyle(
                          color: txtColor.withOpacity(0.7),
                          fontFamily: small,
                          fontSize: 10),
                    ),
                  ],
                ),
                Spacer(),
                Icon(Icons.arrow_forward_ios, color: secondaryColor),
              ]),
            ),
          ),
          SizedBox(
            height: screenHigh / 2,
            child: ListView.builder(
                itemCount: 7,
                scrollDirection: Axis.vertical,
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Help(),
                          ));
                    },
                    child: Container(
                      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                      child: Row(
                        children: [
                          dataIcons[index],
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            dataText[index],
                            style: TextStyle(
                                color: txtColor.withOpacity(0.7),
                                fontFamily: small,
                                fontSize: 20),
                          ),
                          Spacer(),
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
