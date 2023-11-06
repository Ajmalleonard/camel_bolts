// ignore_for_file: non_constant_identifier_names, prefer_const_constructors, unused_import

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/route_manager.dart';
import 'package:camel_bolt/constants/colors.dart';
import 'package:google_fonts/google_fonts.dart';

Widget white_trip_intro() {
  return Container(
    width: Get.width,
    height: Get.height * 0.6,
    decoration: BoxDecoration(
      image: DecorationImage(
          image: AssetImage(
            'assets/img/mask.png',
          ),
          fit: BoxFit.cover),
    ),
    child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
      SizedBox(
        height: Get.height * 0.0,
      ),
      SvgPicture.asset(
        'assets/icons/logo.svg',
        color: Appcolor.xwhiteColor,
        height: Get.height * 0.14,
      ),
      SizedBox(
        height: Get.height * 0.01,
      ),
      Text(
        'Camel Bolt',
        style: TextStyle(
            color: Appcolor.xwhiteColor,
            fontWeight: FontWeight.w700,
            fontSize: 30),
      )
    ]),
  );
}
