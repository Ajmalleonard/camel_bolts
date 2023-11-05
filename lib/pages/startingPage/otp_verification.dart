// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, must_be_immutable

import 'package:camel_bolt/constants/colors.dart';
import 'package:camel_bolt/widgets/otp_verificaition_widget.dart';
import 'package:camel_bolt/widgets/white_trip_intro.dart';
import 'package:flutter/material.dart';
// import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class OtpVerifaction extends StatefulWidget {
  String phoneNumber;
  OtpVerifaction(this.phoneNumber, {super.key});

  @override
  State<OtpVerifaction> createState() => _OtpVerifactionState();
}

class _OtpVerifactionState extends State<OtpVerifaction> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(children: [
          Stack(children: [
            white_trip_intro(),
            Positioned(
              top: 70,
              left: 30,
              child: InkWell(
                onTap: () => Get.back(),
                child: Container(
                    height: 45,
                    width: 45,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle, color: Appcolor.xwhiteColor),
                    child: Icon(
                      Icons.keyboard_arrow_left,
                      color: Appcolor.xgreenColor,
                    )),
              ),
            )
          ]),
          SizedBox(
            height: 50,
          ),
          Otp_Verification_Widget()
        ]),
      ),
    );
  }
}
