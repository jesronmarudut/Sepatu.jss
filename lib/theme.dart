import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

double defaultMargin = 30.0;

Color warna1 = Color(0xffFFFFFF); //Pure Putih
Color warna2 = Color(0xff000000); //Pure Hitam
Color warna3 = Color(0xff504F5E); // Abu-abu
Color warna4 = Color(0xffECEDEF); //Putih level 2
Color warna5 = Color(0xffF2F2F2); //Background TextBox
Color warna6 = Color(0xff999999); //Background card product di chat
Color warna7 = Color(0xff00C897); //Success
Color warna8 = Color(0xffB33030); //Failed
Color priceColor = Color(0xffE00D0D); // Merah
Color transparentColor = Colors.transparent; //Transparemt

TextStyle primaryTextStyle = GoogleFonts.poppins(
  color: warna2,
);

TextStyle secondaryTextStyle = GoogleFonts.poppins(
  color: warna1,
);

TextStyle thirdTextStyle = GoogleFonts.poppins(
  color: warna3,
);

TextStyle subtitleTextStyle = GoogleFonts.poppins(
  color: warna3,
);

TextStyle priceTextStyle = GoogleFonts.poppins(
  color: priceColor,
);

FontWeight light = FontWeight.w300;
FontWeight regular = FontWeight.w400;
FontWeight medium = FontWeight.w500;
FontWeight semiBold = FontWeight.w600;
FontWeight bold = FontWeight.w700;
