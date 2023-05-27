import 'package:flutter/material.dart';
import '../../../../Constants/colors.dart';

class BottomOfStack extends StatefulWidget {
  const BottomOfStack({Key? key}) : super(key: key);

  @override
  State<BottomOfStack> createState() => _BottomOfStackState();
}

class _BottomOfStackState extends State<BottomOfStack> {
  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: 20,
      bottom: 5,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Dr. Strange 2",
            style: TextStyle(
                color: txtColor, fontSize: 20, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 10,
          ),
          const Text(
            "Acton, Superhero, Science Fiction, ...",
            style: TextStyle(
              color: txtColor,
              fontSize: 13,
            ),
          ),
          Row(
            children: [
              Container(
                margin: const EdgeInsets.symmetric(vertical: 10),
                padding:
                    const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                width: 85,
                decoration: const BoxDecoration(
                  color: secondaryColor,
                  borderRadius: BorderRadius.all(Radius.elliptical(20, 20)),
                ),
                child: Row(
                  children: const [
                    Icon(
                      Icons.play_circle,
                      size: 20,
                      color: txtColor,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      "Play",
                      style: TextStyle(
                          color: txtColor, fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ),
              Container(
                margin:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                padding:
                    const EdgeInsets.symmetric(vertical: 4, horizontal: 10),
                width: 100,
                decoration: BoxDecoration(
                  border: Border.all(color: txtColor, width: 2),
                  borderRadius:
                      const BorderRadius.all(Radius.elliptical(20, 20)),
                ),
                child: Row(
                  children: const [
                    Icon(
                      Icons.add,
                      size: 20,
                      color: txtColor,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      "My List",
                      style: TextStyle(
                          color: txtColor, fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
