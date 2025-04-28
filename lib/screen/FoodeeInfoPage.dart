import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:foodee_app/constant/AppTextStyles.dart';
import 'package:foodee_app/constant/ColorConstants.dart';

class FoodeeInfoPage extends StatefulWidget {
  const FoodeeInfoPage({super.key});

  @override
  State<StatefulWidget> createState() => _FoodInfoPage();
}

class _FoodInfoPage extends State<FoodeeInfoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: [
          Stack(
            clipBehavior: Clip.none,
            children: [
              Container(
                width: double.infinity,
                height: 364,
                decoration: BoxDecoration(
                    color: ColorConstants.pinkColor,
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(28),
                        bottomRight: Radius.circular(28))),
              ),
              Positioned(
                  bottom: -20,
                  right: -10,
                  child: Image.asset(
                      width: 294,
                      height: 256,
                      'assets/image/burger-slant.png')),
              Positioned(
                  top: 60,
                  left: 20,
                  child: Text("Mr. Cheezy",
                      style: AppTextStyles.mrCheezyTextStyleRegular)),
              Positioned(
                  top: 62,
                  right: 20,
                  child: Container(
                    width: 44,
                    height: 44,
                    padding: EdgeInsets.all(6),
                    decoration: BoxDecoration(
                        color: ColorConstants.crossColor,
                        borderRadius: BorderRadius.circular(16)),
                    child: Image.asset(
                        width: 24, height: 24, 'assets/image/X.png'),
                  )),
              Positioned(
                  top: 120,
                  left: 20,
                  child: Container(
                    padding: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                        color: ColorConstants.classicTasteBgColor,
                        borderRadius: BorderRadius.circular(28)),
                    child: Text("classic Taste",
                        style: AppTextStyles.classicTasteTextStyleBold),
                  )),
              Positioned(
                  top: 164,
                  left: 20,
                  child: Container(
                    padding: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                        color: ColorConstants.greenColor,
                        borderRadius: BorderRadius.circular(28)),
                    child: Text("Bestseller",
                        style: AppTextStyles.bestSellerTextStyleBold),
                  ))
            ],
          )
        ],
      ),
    ));
  }
}
