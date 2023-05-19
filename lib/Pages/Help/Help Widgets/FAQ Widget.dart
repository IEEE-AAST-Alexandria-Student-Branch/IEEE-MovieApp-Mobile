import 'package:flutter/material.dart';
import '../../../Constants/colors.dart';
import '../../../Constants/fonts.dart';
import '../Help Data.dart';

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
                          data1[index],
                          style: TextStyle(
                            color: current == index
                                ? Colors.white
                                : secondaryColor,
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
              itemCount: data1.length),
        ),
        const SizedBox(
          height: 15,
        ),
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 20),
          padding: const EdgeInsets.symmetric(horizontal: 10),
          decoration: BoxDecoration(
            color: Colors.grey[900],
            borderRadius: BorderRadius.circular(10),
          ),
          width: screenWidth,
          child: Row(
            children: [
              InkWell(
                onTap: () {},
                child: const Icon(
                  Icons.search,
                  color: Colors.grey,
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              const Expanded(
                child: TextField(
                  showCursor: false,
                  cursorColor: Colors.grey,
                  decoration: InputDecoration(
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey),
                    ),
                    focusColor: Colors.grey,
                    hintText: "Search",
                    hintStyle: TextStyle(color: Colors.grey),
                  ),
                  style: TextStyle(color: Colors.white),
                ),
              ),
              InkWell(
                onTap: () {},
                child: const Icon(
                  Icons.filter_alt,
                  color: Colors.grey,
                ),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        SizedBox(
          height: 500,
          child: ListView.separated(
              itemBuilder: (context, index) => Container(
                    height: 60,
                    margin: const EdgeInsets.symmetric(horizontal: 20),
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    decoration: BoxDecoration(
                        color: Colors.grey[900],
                        borderRadius: BorderRadius.circular(15)),
                    child: Row(
                      children: [
                        Text(
                          data3[index],
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                          ),
                        ),
                        SizedBox(
                          height: 500,
                          child: ExpansionPanelList(
                            children: [
                              ExpansionPanel(
                                canTapOnHeader: true,
                                headerBuilder: (context, isExpanded) {
                                  return const Text("fggfgSDFgdfgdsfgadfgsfg");
                                },
                                body: const Text("fgfd"),
                                isExpanded: isOpen[0],
                              ),
                              ExpansionPanel(
                                canTapOnHeader: true,
                                headerBuilder: (context, isExpanded) {
                                  return const Text("fggfgSDFgdfgdsfgadfgsfg");
                                },
                                body: const Text("fdgd"),
                                isExpanded: isOpen[1],
                              ),
                              ExpansionPanel(
                                canTapOnHeader: true,
                                headerBuilder: (context, isExpanded) {
                                  return const Text("fggfgSDFgdfgdsfgadfgsfg");
                                },
                                body: const Text("fdgd"),
                                isExpanded: isOpen[2],
                              ),
                            ],
                            expansionCallback: (i, isOpened) => setState(() {
                              isOpen[i] = isOpened;
                            }),
                          ),
                        ),
                      ],
                    ),
                  ),
              separatorBuilder: (context, index) => const SizedBox(
                    height: 5,
                  ),
              itemCount: data3.length),
        ),
      ],
    );
  }
}
