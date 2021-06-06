import 'package:flutter/material.dart';

class SizeConfig {
  static late MediaQueryData mediaQueryData;
  static late double screenWidth;
  static late double screenHeight;
  static late double defaultSize;
  static late Orientation orientation;

  static void init(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    screenWidth = mediaQueryData.size.width;
    screenHeight = mediaQueryData.size.height;
    orientation = mediaQueryData.orientation;
  }
}
  double getProportionateScreenHeight(double inputHeight) {
    double height = SizeConfig.screenHeight;

    return (inputHeight / 896.0) * height;
  }

  double getProportionateScreenWidth(double inputWidth) {
    double width = SizeConfig.screenWidth;

    return (inputWidth / 414.0) * width;
  }

