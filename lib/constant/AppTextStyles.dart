import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:foodee_app/constant/ColorConstants.dart';

class AppTextStyles {
  static const String unbounded_font = 'Unbounded';

  static const TextStyle dashboardTitleStyleLight = TextStyle(
    fontFamily: unbounded_font,
    fontWeight: FontWeight.w300,
    fontSize: 16,
    color: Color(0XFF3D405B),
  );

  static const TextStyle dashboardMenuTextStyleRegular = TextStyle(
    fontFamily: unbounded_font,
    fontWeight: FontWeight.w400,
    fontSize: 32,
    color: Color(0XFF3D405B),
  );

  static const TextStyle freeDonutTextStyle = TextStyle(
    fontFamily: unbounded_font,
    fontWeight: FontWeight.bold,
    fontSize: 24,
    color: Colors.white,
  );

  static const TextStyle forOrderOver = TextStyle(
      fontFamily: unbounded_font,
      fontSize: 16,
      fontWeight: FontWeight.w300,
      color: Colors.white);

  static const TextStyle bestOffers = TextStyle(
      fontFamily: unbounded_font,
      fontSize: 24,
      fontWeight: FontWeight.w400,
      color: Color(0XFF3D405B));

  static const TextStyle frenchDogTextStyle = TextStyle(
      fontWeight: FontWeight.w400,
      fontFamily: unbounded_font,
      fontSize: 24,
      color: Color(0XFF3D405B));

  static const TextStyle frenchDogTastyAndSpicyTextStyle = TextStyle(
      fontWeight: FontWeight.w300,
      fontFamily: unbounded_font,
      fontSize: 16,
      color: Color(0XFF3D405B));

  static const TextStyle mrCheezyTextStyleRegular = TextStyle(
    fontFamily: unbounded_font,
    fontWeight: FontWeight.w400,
    fontSize: 32,
    color: Colors.white,
  );

  static const TextStyle classicTasteTextStyleBold = TextStyle(
    fontFamily: unbounded_font,
    fontWeight: FontWeight.bold,
    fontSize: 16,
    color: ColorConstants.pinkColor,
  );

  static const TextStyle bestSellerTextStyleBold = TextStyle(
    fontFamily: unbounded_font,
    fontWeight: FontWeight.bold,
    fontSize: 16,
    color: Colors.white,
  );
}
