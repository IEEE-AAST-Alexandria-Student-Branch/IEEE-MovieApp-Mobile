import 'package:flutter/material.dart';
import 'package:ieee_movieapp/Constants/colors.dart';
import 'package:ieee_movieapp/Constants/fonts.dart';
import 'package:ieee_movieapp/Pages/Search/search_page_data.dart';

class SearchFilter extends StatefulWidget {
  const SearchFilter({super.key});

  @override
  State<SearchFilter> createState() => _SearchFilterState();
}

class _SearchFilterState extends State<SearchFilter> {
  final double buttonHeight = 45;
  final double buttonWidth = 150;
  final double buttonGap = 20;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.90,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.only(top: 20, bottom: 10),
            child: Center(
                child: Text(
              "Sort & Filter",
              style: TextStyle(
                  color: secondaryColor, fontFamily: big, fontSize: 20),
            )),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 25),
            child: SizedBox(
                child: Divider(
              thickness: 1,
              color: borderColor,
            )),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 25, vertical: 15),
            child: Text(
              "Categories",
              style: TextStyle(color: txtColor, fontFamily: medium),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 25),
            child: SizedBox(
              height: 40,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: catagorieList.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 5),
                    child: ChoiceChip(
                      label: Text(
                        catagorieList[index].name,
                      ),
                      labelStyle: TextStyle(
                          color: (catagorieList[index].isInterested
                              ? txtColor
                              : secondaryColor),
                          fontFamily: small,
                          fontSize: 15),
                      selected: catagorieList[index].isInterested,
                      onSelected: (newState) {
                        setState(() {
                          catagorieList[index].isInterested =
                              !catagorieList[index].isInterested;
                        });
                      },
                    ),
                  );
                },
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 25, vertical: 15),
            child: Text(
              "Regions",
              style: TextStyle(color: txtColor, fontFamily: medium),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 25),
            child: SizedBox(
              height: 40,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: regionList.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 5),
                    child: ChoiceChip(
                      label: Text(
                        regionList[index].name,
                      ),
                      labelStyle: TextStyle(
                          color: (regionList[index].isInterested
                              ? txtColor
                              : secondaryColor),
                          fontFamily: small,
                          fontSize: 15),
                      selected: regionList[index].isInterested,
                      onSelected: (newState) {
                        setState(() {
                          regionList[index].isInterested =
                              !regionList[index].isInterested;
                        });
                      },
                    ),
                  );
                },
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 25, vertical: 15),
            child: Text(
              "Genre",
              style: TextStyle(color: txtColor, fontFamily: medium),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 25),
            child: SizedBox(
              height: 40,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: filterList.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 5),
                    child: ChoiceChip(
                      label: Text(
                        filterList[index].name,
                      ),
                      labelStyle: TextStyle(
                          color: (filterList[index].isInterested
                              ? txtColor
                              : secondaryColor),
                          fontFamily: small,
                          fontSize: 15),
                      selected: filterList[index].isInterested,
                      onSelected: (newState) {
                        setState(() {
                          filterList[index].isInterested =
                              !filterList[index].isInterested;
                        });
                      },
                    ),
                  );
                },
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 25, vertical: 15),
            child: Text(
              "Time/Periods",
              style: TextStyle(color: txtColor, fontFamily: medium),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 25),
            child: SizedBox(
              height: 40,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: timeList.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 5),
                    child: ChoiceChip(
                      label: Text(
                        timeList[index].name,
                      ),
                      labelStyle: TextStyle(
                          color: (timeList[index].isInterested
                              ? txtColor
                              : secondaryColor),
                          fontFamily: small,
                          fontSize: 15),
                      selected: timeList[index].isInterested,
                      onSelected: (newState) {
                        setState(() {
                          timeList[index].isInterested =
                              !timeList[index].isInterested;
                        });
                      },
                    ),
                  );
                },
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 25, vertical: 15),
            child: Text(
              "Sort",
              style: TextStyle(color: txtColor, fontFamily: medium),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 25),
            child: SizedBox(
              height: 40,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: sortList.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 5),
                    child: ChoiceChip(
                      label: Text(
                        sortList[index].name,
                      ),
                      labelStyle: TextStyle(
                          color: (sortList[index].isInterested
                              ? txtColor
                              : secondaryColor),
                          fontFamily: small,
                          fontSize: 15),
                      selected: sortList[index].isInterested,
                      onSelected: (newState) {
                        setState(() {
                          sortList[index].isInterested =
                              !sortList[index].isInterested;
                        });
                      },
                    ),
                  );
                },
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 25),
            child: SizedBox(
                child: Divider(
              thickness: 1,
              color: borderColor,
            )),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: buttonHeight,
                width: buttonWidth,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        elevation: 0,
                        backgroundColor: secButton,
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(25)),
                        )),
                    onPressed: () {
                      setState(() {
                        for (int i = 0; i < filterList.length; i++) {
                          filterList[i].isInterested = false;
                        }
                        for (int i = 0; i < catagorieList.length; i++) {
                          catagorieList[i].isInterested = false;
                        }
                        for (int i = 0; i < sortList.length; i++) {
                          sortList[i].isInterested = false;
                        }
                        for (int i = 0; i < timeList.length; i++) {
                          timeList[i].isInterested = false;
                        }
                        for (int i = 0; i < regionList.length; i++) {
                          regionList[i].isInterested = false;
                        }
                      });
                    },
                    child: const Text("reset",
                        style: TextStyle(fontFamily: medium))),
              ),
              SizedBox(
                width: buttonGap,
              ),
              SizedBox(
                height: buttonHeight,
                width: buttonWidth,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        elevation: 0,
                        backgroundColor: secondaryColor,
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(25)),
                        )),
                    onPressed: () {},
                    child: const Text("Contiune",
                        style: TextStyle(fontFamily: medium))),
              ),
            ],
          )
        ],
      ),
    );
  }
}
