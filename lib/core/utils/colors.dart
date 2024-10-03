import 'package:flutter/material.dart';

final appColor = AppColors();

class AppColors {
  static AppColors? _instance;

  factory AppColors() {
    return _instance ??= AppColors._internal();
  }

  AppColors._internal();

//Main Colors
  final blackBold = const Color(0xFF171717);
  final primaryColor = const Color(0xFF9333EA);
  final blue = const Color(0xFF5AC3FA);
  final lightPurple = const Color(0xFFE9D5FF);
  final grey = const Color(0xFFA3A3A3);

  //

  final inactiveTextFormColor = const Color(0xFFC4C4C4);
  final hintTextColor = const Color(0xFFB3B3B3);
  final accountBorderColor = const Color(0xFFD9D9D9);
  final textgreyLightMode = const Color(0xFFB3B3B3);
  final titletextColor = const Color(0xff495057);
  final textFormHeader = const Color(0xff1A1A1A);
  final textFormContent = const Color(0xff212529);
  final shareTextColor = const Color(0xFF7E7E7E);
  final eventBorderColor = const Color(0xFFF1F1F1);
  final eventTimeColor = const Color(0xFF979797);
  final eventLocationColor = const Color(0xFF8F8F8F);
  final eventSponsorTextColor = const Color(0xFF979797);

  //DarkMode
  final backgroundDeep = const Color(0xFFF6F6F6);
  final scaffoldBackgroud = const Color(0xFF212529);
  final transparent = Colors.transparent;
  final gray = const Color(0xFFB8BBD4);
  final appbarBackground = const Color(0xFF495057);
  final textgreyDarkMode = const Color(0xFF6C757D);
  final donateRaisedColor = const Color(0xFF8D8D8D);
  final titletextColorDark = const Color(0xfff9f9f9);
  final billBorderColor = const Color.fromRGBO(255, 255, 255, 0.3);
  final darkProfileTextColor = const Color(0xFFD9D9D9);
  final darkTextFieldColor = const Color.fromRGBO(255, 255, 255, 0.11);
  final searchColor = const Color(0xFFEFEFEF);
  final beneficiaryColor = const Color(0xFFC6C6C6);
  //
  final lightGrey3 = const Color(0xFF6C6C6C);
  final lightGrey4 = const Color(0xFFB8BBD4);
  final green = const Color(0xFF38B000);
  final black = const Color(0xFF000000);
  final themeColor = const Color(0xFF31B60E);
  final productSlideColor = const Color(0xFFC0C0C0);
  final transparentBlack = const Color(0xD8010101);
  final shadowGrey = const Color(0x232F2F2F);
  final transTextColor = const Color(0xFF2F2F2F);
  final success = const Color(0xFF43C084);
  final offWhite = const Color(0xFFF7F7F7);
  final white = const Color(0xFFFFFFFF);
  final formError = Colors.red.shade400;
  final yellow = const Color(0xFFF2C364);
  final backgroundYellow = const Color(0xFFFFF2DB);
  final bottomSheetPillColor = const Color(0xFFE6E6E6);
  final borderColor = const Color(0xFFEFECF0);
  final faintGrey = const Color(0xFF929292);
  final filterByBorderColor = const Color(0xFFEDEDED);
  final redColor = const Color(0xFFF22E52);
  final menuBackgroundColor = const Color(0xFFFDFBFF);
  final blackNoName = const Color(0xFF121212);
  final passwordCheckBg = const Color(0xFFFDFBFF);
  final passwordConditions = const Color(0xFF222222);
  final activateDeactivateUssdBackgroundColor = const Color(0xFFFFD7DE);
  final cardVariantColor = const Color(0xFFFAF4FF);
  final textBlackColor = const Color(0xFF1D1A19);
  final productTextColor = const Color(0xFF404040);
  final secondProductTextColor = const Color(0xFF737373);
  final thirdProductTextColor = const Color(0xFF444444);
  final paymnCardColor = const Color(0xFFE4E4E4);
  final nonePaymentCardColor = const Color(0xFFF4F4F4);
  final transactionColor = const Color(0xFFFBFBFB);
  final resetFilterColor = const Color(0xFFE9D5FF);
  final graySettingColor = const Color(0xFFF9F9F9);
  final primaryCombinationColor = const Color.fromRGBO(187, 150, 69, 0.15);
  final profileBorderColor = const Color.fromRGBO(187, 150, 69, 0.2);
  final smallContainerColor = const Color(0xFFE1E1E1);
  final profileTextColor = const Color(0xFF343A40);
  final settingTextColor = const Color(0xFF495057);
  final profileTextColor1 = const Color(0xFF6C757D);
  final errorColor = const Color(0xFFF60E0E);
  final pinColor = const Color(0xFF1A1A1A);
  final settingDividerColor = const Color(0xFFE6E6E6);
  final prodColor = const Color(0xFF545454);
  final topAvailableColor = const Color(0xFF4B4B4B);
  final prodDescColor = const Color(0xFF969696);
  final prodContColor = const Color(0xFFE3E3E3);
  final greenColor = const Color(0xFF00B69B);
  final transTimeColor = const Color(0xFFA1A1A1);
  final prodReviewColor = const Color(0xFFFDFDFD);
  final transCreditColor = const Color(0xFF5ABF4E);
  final circleAvatarColor = const Color(0xFFEEEEEE);
  final transDebitColor = const Color(0xFFDA2127);
  final clearFilterTextHeavyColor = const Color(0xFF6D6C6C);
}
