import 'package:flutter/material.dart';
import 'package:ieee_movieapp/Constants/colors.dart';
import '../help_data.dart';

class ContactUs extends StatefulWidget {
  const ContactUs({Key? key}) : super(key: key);

  @override
  State<ContactUs> createState() => _ContactUsState();
}

class _ContactUsState extends State<ContactUs> {
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        itemBuilder: (context, index) => InkWell(
              onTap: () {},
              child: Container(
                decoration: BoxDecoration(
                  color: fieldColor,
                  borderRadius: BorderRadius.circular(10),
                ),
                padding: const EdgeInsets.all(20),
                margin: const EdgeInsets.symmetric(vertical: 8),
                child: Row(
                  children: [
                    contactIconList[index],
                    const SizedBox(
                      width: 20,
                    ),
                    Text(
                      //////used list from help_data.dart
                      contactList[index],
                      style: const TextStyle(
                        color: txtColor,
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
              ),
            ),
        separatorBuilder: (context, index) => const SizedBox(
              height: 5,
            ),
        itemCount: contactList.length);
  }
}
