import 'package:flutter/material.dart';

int getCrossAxisCount(BuildContext context) {
  double screenWidth = MediaQuery.of(context).size.width;
  if (screenWidth > 1200) {
    return 10;
  } else if (screenWidth > 800) {
    return 9;
  } else if (screenWidth > 600) {
    return 8;
  } else if (screenWidth > 400) {
    return 7;
  } else {
    return 6;
  }
}
