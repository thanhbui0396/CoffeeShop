import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyTheme {
  static ThemeData lightTheme = ThemeData.light().copyWith(
    textTheme: const TextTheme(),
    appBarTheme: AppBarTheme(
      titleTextStyle: TextStyle(
          color: Colors.white,
          fontSize: 30.sp,
          fontWeight: FontWeight.w400,
          fontFamily: 'Quicksand'),
    ),
  );
}
