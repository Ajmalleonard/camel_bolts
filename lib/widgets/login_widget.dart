// ignore_for_file: non_constant_identifier_names, avoid_unnecessary_containers, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:camel_bolt/constants/app_constants.dart';
import 'package:camel_bolt/constants/colors.dart';
import 'package:camel_bolt/widgets/primary_text.dart';
import 'package:camel_bolt/widgets/text_field.dart';
import 'package:fl_country_code_picker/fl_country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

Widget login_widget(CountryCode countryCode, onCountryCahnage, onSubmit) {
  return Padding(
    padding: const EdgeInsets.symmetric(
      horizontal: 30,
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        primary_text(
            text: AppText.helloNiceToMeetYou,
            fs: Get.width * 0.03,
            fw: FontWeight.w400),
        primary_text(
            text: AppText.getMovingWithCamelBotlt, fs: 20, fw: FontWeight.bold),
        SizedBox(
          height: 15,
        ),
        Container(
          width: double.infinity,
          height: 55,
          padding: EdgeInsets.symmetric(horizontal: 10),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: Appcolor.xwhiteColor,
              boxShadow: [
                BoxShadow(
                    color: Appcolor.xbgColor.withOpacity(0.09),
                    spreadRadius: 1,
                    blurRadius: 4,
                    offset: Offset(0, 5)),
              ]),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                width: 4,
              ),
              Expanded(
                flex: 1,
                child: InkWell(
                  onTap: () => onCountryCahnage(),
                  child: Container(
                    child: Row(
                      children: [
                        Expanded(
                          child: Container(
                            child: countryCode.flagImage(),
                          ),
                        ),
                        primary_text(
                            text: countryCode.dialCode,
                            fs: 12,
                            fw: FontWeight.w500),
                        Icon(Icons.keyboard_arrow_down)
                      ],
                    ),
                  ),
                ),
              ),
              Container(
                width: 1,
                height: 20,
                color: Colors.black.withOpacity(0.1),
              ),
              Expanded(
                flex: 3,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Container(child: textfield(onSubmit: onSubmit)),
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 40,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: RichText(
              textAlign: TextAlign.center,
              text: TextSpan(children: [
                TextSpan(
                  text: AppText.byCreating,
                  style: TextStyle(color: Appcolor.xbgColor, fontSize: 12),
                ),
                TextSpan(
                  text: AppText.termsOfservice,
                  style: TextStyle(
                      color: const Color.fromARGB(255, 0, 0, 0),
                      fontSize: 12,
                      fontWeight: FontWeight.w600),
                ),
                TextSpan(
                  text: AppText.and,
                  style: TextStyle(
                    color: const Color.fromARGB(255, 0, 0, 0),
                    fontSize: 12,
                  ),
                ),
                TextSpan(
                  text: AppText.privacyPolicy,
                  style: TextStyle(
                      color: const Color.fromARGB(255, 0, 0, 0),
                      fontSize: 12,
                      fontWeight: FontWeight.w600),
                ),
              ])),
        )
      ],
    ),
  );
}
