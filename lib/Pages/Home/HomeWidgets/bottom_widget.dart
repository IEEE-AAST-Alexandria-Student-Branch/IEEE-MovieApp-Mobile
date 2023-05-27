import 'package:flutter/material.dart';
import 'package:ieee_movieapp/Pages/Home/HomeWidgets/new_releases_page.dart';
import '../../../Constants/colors.dart';
import '../home_data.dart';

class BottomWidget extends StatefulWidget {
  const BottomWidget({Key? key}) : super(key: key);

  @override
  State<BottomWidget> createState() => _BottomWidgetState();
}

class _BottomWidgetState extends State<BottomWidget> {
  @override
  Widget build(BuildContext context) {
    double screenHigh = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Expanded(
      child: ListView.separated(
        itemBuilder: (context, index) => Container(
          padding: const EdgeInsets.only(left: 20),
          height: screenHigh * (30 / 100),
          child: Column(
            children: [
              Row(
                children: [
                  Text(
                    txt[index],
                    style: const TextStyle(color: txtColor, fontSize: 20),
                  ),
                  const Spacer(),
                  InkWell(
                    onTap: () {
                      if (index == 1) {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const NewReleases()));
                      }
                    },
                    child: const Text(
                      "See all",
                      style: TextStyle(color: secondaryColor, fontSize: 20),
                    ),
                  ),
                  const SizedBox(width: 10)
                ],
              ),
              const SizedBox(height: 20),
              Expanded(
                child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index2) => Stack(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Image.asset(
                                index == 0
                                    ? top10[index2]
                                    : newreleases[index2],
                                width: screenWidth / 3,
                                fit: BoxFit.fill,
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.symmetric(
                                  vertical: 10, horizontal: 10),
                              padding: const EdgeInsets.symmetric(
                                  vertical: 5, horizontal: 10),
                              width: 43,
                              decoration: BoxDecoration(
                                color: secondaryColor,
                                borderRadius: BorderRadius.circular(5),
                              ),
                              child: Text(
                                ratings[index2],
                                style: TextStyle(
                                    color: txtColor,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ],
                        ),
                    separatorBuilder: (context, index) =>
                        const SizedBox(width: 10),
                    itemCount: top10.length),
              ),
            ],
          ),
        ),
        separatorBuilder: (context, index) => const SizedBox(
          height: 20,
        ),
        itemCount: 2,
      ),
    );
  }
}
