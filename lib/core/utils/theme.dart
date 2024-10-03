import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nutrisnap/core/utils/colors.dart';

final color = AppColors();

class AltConnectTexStyle {
  static const h1 = TextStyle(
    fontFamily: "Inter",
    fontSize: 24,
    fontWeight: FontWeight.w300,
    letterSpacing: 1.5,
    color: Colors.black,
  );
  static final h2 = TextStyle(
    fontFamily: "Inter",
    fontSize: 40.sp,
    fontWeight: FontWeight.w300,
    letterSpacing: -0.5,
    color: Colors.black,
  );

  static final h21 = TextStyle(
    fontFamily: "Inter",
    fontSize: 18.sp,
    fontWeight: FontWeight.w500,
    height: 0.07,
    //letterSpacing: -0.5,
    color: Colors.black,
  );

  static const h22 = TextStyle(
    color: Color(0xFF212529),
    fontSize: 16,
    fontFamily: 'Inter',
    fontWeight: FontWeight.w500,
    height: 0.09,
  );

  static final h3 = TextStyle(
    fontFamily: "Inter",
    fontSize: 30.sp,
    fontWeight: FontWeight.w400,
    color: Colors.black,
  );
  static final h4 = TextStyle(
    fontFamily: "Inter",
    fontSize: 26.sp,
    fontWeight: FontWeight.w400,
    letterSpacing: 0.25,
    color: Colors.black,
  );

  /// default font size here is 20.sp
  static final h5 = TextStyle(
    fontFamily: "Inter",
    fontSize: 20.sp,
    fontWeight: FontWeight.w400,
    color: Colors.black,
  );

  /// default font size here is 17.sp
  static final h6 = TextStyle(
    fontFamily: "Inter",
    fontSize: 17.sp,
    fontWeight: FontWeight.w400,
    letterSpacing: 0.15,
    color: Colors.black,
  );

  static final h7 = TextStyle(
    fontFamily: "Inter",
    fontSize: 16.sp,
    letterSpacing: 0.25,
    color: Color(0xff212529),
  );
  static final p1 = TextStyle(
    fontFamily: "Inter",
    fontSize: 16.sp,
    fontWeight: FontWeight.w400,
    fontStyle: FontStyle.normal,
    letterSpacing: 0.5,
    color: Colors.black,
  );
  static final p2 = TextStyle(
    fontFamily: "Inter",
    fontSize: 14.sp,
    fontWeight: FontWeight.w400,
    letterSpacing: 0.25,
    color: Colors.black,
    fontStyle: FontStyle.normal,
  );
  static final subtitle1 = TextStyle(
    fontFamily: "Inter",
    fontSize: 13.sp,
    fontWeight: FontWeight.w400,
    letterSpacing: 0.15,
    color: Colors.black,
    fontStyle: FontStyle.normal,
  );
  static final subtitle2 = TextStyle(
    fontFamily: "Inter",
    fontSize: 12.sp,
    fontWeight: FontWeight.w500,
    letterSpacing: 0.1,
    color: Colors.black,
  );
  static final j1 = TextStyle(
    fontFamily: "Inter",
    fontSize: 14.sp,
    fontWeight: FontWeight.w500,
    height: 0.1,
    color: Color(0xff495057),
  );

  static final button = TextStyle(
    fontFamily: "Inter",
    fontSize: 14.sp,
    fontWeight: FontWeight.w500,
    letterSpacing: 1.25,
    color: Colors.black,
  );
  static final caption = TextStyle(
    fontFamily: "Inter",
    fontSize: 12.sp,
    fontWeight: FontWeight.w400,
    letterSpacing: 0.4,
    color: Colors.black,
  );
  static final overline = TextStyle(
    fontFamily: "Inter",
    fontSize: 10.sp,
    fontWeight: FontWeight.w400,
    letterSpacing: 1.5,
    color: Colors.black,
  );
}

class SystemStyles {
  static final SystemUiOverlayStyle light = Platform.isIOS
      ? SystemUiOverlayStyle(
          statusBarColor: Colors.black.withOpacity(.2),
          statusBarBrightness: Brightness.dark,
          statusBarIconBrightness: Brightness.dark,
          systemNavigationBarColor: Colors.black,
          systemNavigationBarIconBrightness: Brightness.dark)
      : SystemUiOverlayStyle(
          statusBarColor: Colors.black.withOpacity(.2),
          statusBarBrightness: Brightness.dark,
          statusBarIconBrightness: Brightness.light,
          systemNavigationBarColor: Colors.black,
          systemNavigationBarIconBrightness: Brightness.dark);

  static final SystemUiOverlayStyle dark = Platform.isIOS
      ? const SystemUiOverlayStyle(
          statusBarColor: Colors.transparent,
          statusBarBrightness: Brightness.light,
          statusBarIconBrightness: Brightness.light,
          systemNavigationBarColor: Colors.black,
          systemNavigationBarIconBrightness: Brightness.dark)
      : const SystemUiOverlayStyle(
          statusBarColor: Colors.transparent,
          statusBarBrightness: Brightness.dark,
          statusBarIconBrightness: Brightness.dark,
          systemNavigationBarColor: Colors.black,
          systemNavigationBarIconBrightness: Brightness.dark);
}
