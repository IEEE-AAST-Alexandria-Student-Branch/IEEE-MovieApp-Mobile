import 'package:flutter/material.dart';
import 'package:ieee_movieapp/Constants/colors.dart';

int current = 0;

List<String> data1 = [
  "General",
  "Account",
  "Service",
  "Video",
];

List<String> data2 = [
  "Customer Service",
  "WhatsApp",
  "Website",
];

List<String> data3 = [
  "What is Mova?",
  "How to remove wishlist?",
  "How can I download movies?",
];

List<bool> isOpen = [false, false, false];

List<Icon> icons = [
  const Icon(
    Icons.headphones,
    color: secondaryColor,
  ),
  const Icon(
    Icons.message,
    color: secondaryColor,
  ),
  const Icon(
    Icons.web,
    color: secondaryColor,
  ),
];
