import 'package:flutter/material.dart';
import 'package:foodee_app/constant/AppTextStyles.dart';

Widget foodCard(
    {required String title, required Color color, required String imagePath}) {
  return Container(
    width: 104,
    decoration: BoxDecoration(
      color: color,
      borderRadius: BorderRadius.circular(28),
      boxShadow: [
        BoxShadow(
          color: Color(0XFFF2CC8F).withOpacity(0.4),
          blurRadius: 20,
          spreadRadius: 2,
          offset: Offset(0, 8),
        )
      ],
    ),
    child: Column(
      children: [
        SizedBox(height: 16),
        Text(
          title,
          style: TextStyle(
            fontSize: 18,
            fontFamily: AppTextStyles.unbounded_font,
            fontWeight: FontWeight.w300,
            color: Color(0XFF3D405B),
          ),
        ),
        SizedBox(height: 4),
        SizedBox(
            width: 96,
            height: 94,
            child: Image.asset(
              imagePath,
            )),
      ],
    ),
  );
}
