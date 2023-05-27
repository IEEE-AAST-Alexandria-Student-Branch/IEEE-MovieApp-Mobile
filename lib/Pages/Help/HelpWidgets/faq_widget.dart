import 'package:flutter/material.dart';
import '../../../Constants/colors.dart';
import '../../../Constants/fonts.dart';
import '../help_data.dart';

class FAQ extends StatefulWidget {
  const FAQ({Key? key}) : super(key: key);

  @override
  State<FAQ> createState() => _FAQState();
}

class _FAQState extends State<FAQ> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Column(
      children: [
        // Horizontal questionCatagoryList chip selector
        SizedBox(
          height: 60,
          child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => GestureDetector(
                    onTap: () {
                      setState(() {
                        current = index;
                      });
                    },
                    child: AnimatedContainer(
                      duration: const Duration(milliseconds: 300),
                      margin: const EdgeInsets.symmetric(vertical: 10),
                      padding: const EdgeInsets.all(10),
                      width: 100,
                      decoration: BoxDecoration(
                        color: current == index ? secondaryColor : primaryColor,
                        border: Border.all(color: secondaryColor, width: 2),
                        borderRadius:
                            const BorderRadius.all(Radius.elliptical(20, 20)),
                      ),
                      child: Center(
                        child: Text(
                          questionCatagoryList[index],
                          style: TextStyle(
                            color: current == index ? txtColor : secondaryColor,
                            fontSize: 17,
                            fontFamily: small,
                          ),
                        ),
                      ),
                    ),
                  ),
              separatorBuilder: (context, index) => const SizedBox(
                    width: 10,
                  ),
              itemCount: questionCatagoryList.length),
        ),
        const SizedBox(
          height: 15,
        ),
        // Search Bar
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          decoration: BoxDecoration(
            color: fieldColor,
            borderRadius: BorderRadius.circular(10),
          ),
          width: screenWidth,
          child: Row(
            children: [
              InkWell(
                onTap: () {},
                child: const Icon(
                  Icons.search,
                  color: fieldTxtColor,
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              const Expanded(
                /////////search bar
                child: TextField(
                  showCursor: true,
                  cursorColor: secondaryColor,
                  decoration: InputDecoration(
                    fillColor: fieldColor,
                    enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: fieldColor)),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: primaryColor),
                    ),
                    hintText: "Search",
                    hintStyle: TextStyle(color: fieldTxtColor),
                  ),
                  style: TextStyle(color: txtColor),
                ),
              ),
              InkWell(
                onTap: () {},
                child: const Icon(
                  Icons.filter_alt,
                  color: secondaryColor,
                ),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        // Expantion tile blocks builder
        Expanded(
          /////////using previously assigned lists from help_data
          child: ListView.separated(
              itemCount: questionList.length,
              itemBuilder: (context, index) {
                return ClipRRect(
                  borderRadius: const BorderRadius.all(Radius.circular(15)),
                  child: ExpansionTile(
                    title: Text(questionList[index]),
                    children: const [
                      SizedBox(
                          width: double.infinity,
                          child: Divider(
                            thickness: 1,
                            color: borderColor,
                          )),
                      Text(
                        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
                        style: TextStyle(color: txtColor),
                      )
                    ],
                  ),
                );
              },
              separatorBuilder: (context, index) => const SizedBox(
                    height: 20,
                  )),
        )
      ],
    );
  }
}
