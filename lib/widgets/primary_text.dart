import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Widget primary_text(
    {required String text, required double fs, required FontWeight fw}) {
  return Text(
    text,
    style: GoogleFonts.poppins(fontSize: fs, fontWeight: fw),
  );
}
