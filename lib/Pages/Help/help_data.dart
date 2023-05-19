import 'package:flutter/material.dart';
import 'package:ieee_movieapp/Constants/colors.dart';

int current = 0;

List<String> questionCatagoryList = [
  "General",
  "Account",
  "Service",
  "Video",
];

List<String> questionList = [
  "What is Mova?",
  "How to remove wishlist?",
  "How do i subscribe to premium?",
  "How can i download movies?",
  "How to unsubscribe from premium"
];

List<bool> isOpen = [false, false, false];

List<String> contactList = ["Customer Service", "WhatsApp", "Website", "Phone"];

List<Icon> contactIconList = [
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
  const Icon(
    Icons.phone,
    color: secondaryColor,
  ),
];
