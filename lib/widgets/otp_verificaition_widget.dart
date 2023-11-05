// ignore_for_file: non_constant_identifier_names, avoid_unnecessary_containers, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:camel_bolt/constants/app_constants.dart';
import 'package:camel_bolt/constants/colors.dart';
import 'package:camel_bolt/widgets/pinput_otp_verification.dart';
import 'package:camel_bolt/widgets/primary_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

Widget Otp_Verification_Widget() {
  return Padding(
    padding: const EdgeInsets.symmetric(
      horizontal: 30,
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        primary_text(
            text: AppText.phoneVerification,
            fs: Get.width * 0.03,
            fw: FontWeight.w400),
        primary_text(text: AppText.enterOTP, fs: 20, fw: FontWeight.bold),
        SizedBox(
          height: 15,
        ),
        buildPinPut(),
        SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: RichText(
              textAlign: TextAlign.start,
              text: TextSpan(children: [
                TextSpan(
                  text: AppText.resentCode,
                  style: TextStyle(color: Appcolor.xbgColor, fontSize: 12),
                ),
                TextSpan(
                  text: ' ' '10 ',
                  style: TextStyle(
                      color: const Color.fromARGB(255, 0, 0, 0),
                      fontSize: 12,
                      fontWeight: FontWeight.w600),
                ),
                TextSpan(
                  text: AppText.seconds,
                  style: TextStyle(
                      color: const Color.fromARGB(255, 0, 0, 0),
                      fontSize: 12,
                      fontWeight: FontWeight.w600),
                )
              ])),
        )
      ],
    ),
  );
}
