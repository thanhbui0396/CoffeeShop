import 'package:get/get.dart';

class Dimensions {
  static double screenHeight = Get.context!.height;
  static double screenWidth = Get.context!.width;
  static double pageView = screenHeight / 2.44; //320
  static double pageViewContainer = screenHeight / 3.55; //220
  static double pageViewTextContainer = screenHeight / 6.51; //120
  // dynamic height padding and margin
  static double height5 = screenHeight / 156.2;
  static double height10 = screenHeight / 78.1;
  static double height15 = screenHeight / 52.07;
  static double height20 = screenHeight / 39.05;
  static double height25 = screenHeight / 31.24;
  static double height30 = screenHeight / 26.03;
  static double height40 = screenHeight / 19.52;
  static double height45 = screenHeight / 17.35;
  static double height60 = screenHeight / 13.02;
  static double height100 = screenHeight / 7.81;
  // dynamic width padding and margin
  static double width5 = screenWidth / 78.4;
  static double width10 = screenWidth / 39.2;
  static double width15 = screenWidth / 26.13;
  static double width20 = screenWidth / 19.6;
  static double width25 = screenWidth / 15.68;
  static double width30 = screenWidth / 13.07;
  static double width45 = screenWidth / 8.71;
  static double width90 = screenWidth / 4.3;
  static double width100 = screenWidth / 3.92;
  static double width120 = screenWidth / 3.27;
  static double width230 = screenWidth / 1.7;

  //text
  static double font12 = screenHeight / 65.08;
  static double font16 = screenHeight / 48.81;
  static double font20 = screenHeight / 39.05;
  static double font24 = screenHeight / 32.54;
  static double font30 = screenWidth / 13.07;

  //radius
  static double radius5 = screenHeight / 156.2;
  static double radius10 = screenHeight / 78.1;
  static double radius15 = screenHeight / 52.07;
  static double radius20 = screenHeight / 39.05;
  static double radius30 = screenHeight / 26.03;
  static double radius40 = screenHeight / 19.52;

  //icon
  static double iconSize16 = screenHeight / 48.81;
  static double iconSize20 = screenHeight / 39.05;
  static double iconSize24 = screenHeight / 32.54;
  static double iconSize30 = screenHeight / 26.03;
}
