import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Widget textWidget({required String text, required TextStyle textStyle}) {
  return Text(
    text,
    style: GoogleFonts.poppins(textStyle: textStyle),
  );
}
