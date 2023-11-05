import 'package:camel_bolt/constants/app_constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Widget textfield({required Function onSubmit}) {
  return TextField(
    onSubmitted: (String? input) => onSubmit,
    decoration: InputDecoration(
        hintText: AppText.enterMobileNumber,
        hintStyle: GoogleFonts.poppins(fontSize: 13),
        border: InputBorder.none),
  );
}
