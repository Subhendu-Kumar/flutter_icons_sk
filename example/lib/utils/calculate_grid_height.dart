import 'package:flutter/material.dart';
import 'package:example/utils/get_cross_axis_count.dart';

double calculateGridHeight(
  BuildContext context,
  int itemCount,
  double aspectRatio,
) {
  double screenWidth = MediaQuery.of(context).size.width;
  int crossAxisCount = getCrossAxisCount(context);

  int rows = (itemCount / crossAxisCount).ceil();
  double itemWidth = screenWidth / crossAxisCount;
  double itemHeight = itemWidth / aspectRatio;

  return rows * itemHeight - rows * 32;
}
