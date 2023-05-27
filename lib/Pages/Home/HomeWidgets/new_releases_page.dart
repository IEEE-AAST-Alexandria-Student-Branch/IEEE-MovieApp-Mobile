import 'package:flutter/material.dart';
import 'package:ieee_movieapp/Pages/Home/home_data.dart';
import 'package:ieee_movieapp/Pages/Home/home_page.dart';

import '../../../Constants/colors.dart';

class NewReleases extends StatefulWidget {
  const NewReleases({Key? key}) : super(key: key);

  @override
  State<NewReleases> createState() => _NewReleasesState();
}

class _NewReleasesState extends State<NewReleases> {
  @override
  Widget build(BuildContext context) {
    double screenHigh = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        actions: <Widget>[
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.search,
              ))
        ],
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: const Icon(
                Icons.arrow_back_outlined,
                color: txtColor,
                size: 22, // Changing Drawer Icon Size
              ),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const Home(),
                    ));
              },
            );
          },
        ),
        backgroundColor: primaryColor,
        title: const Text(
          "New Releases",
          style: TextStyle(color: txtColor, fontWeight: FontWeight.normal),
        ),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: ListView.separated(
            scrollDirection: Axis.vertical,
            itemBuilder: (context, index2) {
              return Row(
                children: [
                  Stack(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image.asset(
                          newreleases[index2 = index2 * 2],
                          width: screenWidth / 2.3,
                          height: screenHigh * (30 / 100),
                          fit: BoxFit.cover,
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
                          style: const TextStyle(
                              color: txtColor, fontWeight: FontWeight.bold),
                        ),
                      )
                    ],
                  ),
                  const Spacer(),
                  Stack(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image.asset(
                          newreleases[index2 + 1],
                          width: screenWidth / 2.3,
                          fit: BoxFit.cover,
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
                          ratings[index2 + 1],
                          style: const TextStyle(
                              color: txtColor, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  )
                ],
              );
            },
            separatorBuilder: (context, index) => const SizedBox(height: 10),
            itemCount: newreleases.length ~/ 2),
      ),
    );
  }
}
