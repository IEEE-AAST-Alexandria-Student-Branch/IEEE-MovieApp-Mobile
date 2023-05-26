import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:ieee_movieapp/Constants/colors.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:ieee_movieapp/Pages/Profile/ProfileWidgets/skip_cont_buttons_fill.dart';


class Ratepage extends StatelessWidget {
  const Ratepage({Key? key}) : super(key: key);
//this page is to allow user to give the app a rating, while also showing reviews

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Give Rating"),
        centerTitle: true,
        backgroundColor: borderColor,
      ),
      body:

      Column(
        children: [
        Container(
          width: 500, height: 200,
        color: borderColor,
        padding: const EdgeInsets.symmetric(
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                        text: "9.8",
                        style: TextStyle(fontSize: 48.0, color: Colors.white),
                      ),
                      TextSpan(
                        text: "/10",
                        style: TextStyle(
                          fontSize: 24.0,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
                IgnorePointer(child: RatingBar.builder(
                  initialRating: 4.5,
                  minRating: 1,
                  direction: Axis.horizontal,
                  itemCount: 5,
                  itemBuilder: (context, _) => const Icon(
                    Icons.star,
                    color: secondaryColor,
                  ),
                  onRatingUpdate: (rating) {
                    print(rating);
                  },
                ),),
                const SizedBox(height: 16.0),
                const Text(
                  "(284 users)",
                  style: TextStyle(
                    fontSize: 15.0,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            Container(
              width: 200.0,
              child: ListView.builder(
                shrinkWrap: true,
                reverse: true,
                itemCount: 5,
                itemBuilder: (context, index) {
                  return Row(
                    children: [
                      Text(
                        "${index + 1}",
                        style: const TextStyle(fontSize: 18.0),
                      ),
                      const SizedBox(width: 4.0),
                      const Icon(Icons.star, color: secondaryColor),
                      const SizedBox(width: 8.0),
                      LinearPercentIndicator(
                        lineHeight: 6.0,
                        // linearStrokeCap: LinearStrokeCap.roundAll,
                        width: MediaQuery.of(context).size.width / 2.8,
                        animation: true,
                        animationDuration: 2500,
                        percent: 3.0,
                        progressColor: secondaryColor,
                      ),
                    ],
                  );
                },
              ),
            ),
          ],
        ),
      ),
          starRate(),

          const SkipContButtonsFill(),
    ],
    ));
  }

  starRate() {
    return RatingBar.builder(
      initialRating: 3,
      minRating: 1,
      direction: Axis.horizontal,
      itemCount: 5,
      itemPadding: const EdgeInsets.symmetric(horizontal: 5),
      itemBuilder: (context, _) =>
      const Icon(
        Icons.star,
        color: secondaryColor,
      ),
      onRatingUpdate: (rating) => debugPrint(rating.toString()),
    );
  }
}