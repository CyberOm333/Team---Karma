import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:velocity_x/velocity_x.dart';

class MyTheme {
  static ThemeData lightTheme(BuildContext context) => ThemeData(
      primarySwatch: Colors.purple,
      fontFamily: GoogleFonts.poppins().fontFamily,
      cardColor: Colors.white,
      canvasColor: creamColor2,
      buttonColor: lighBluishColor,
      accentColor: darkBlueColor,
      appBarTheme: AppBarTheme(
          color: Colors.white,
          elevation: 0.0,
          iconTheme: IconThemeData(color: Colors.black),
          toolbarTextStyle: Theme.of(context).textTheme.bodyText1));

  static ThemeData darkTheme(BuildContext context) => ThemeData(
      brightness: Brightness.dark,
      fontFamily: GoogleFonts.poppins().fontFamily,
      cardColor: Colors.black,
      canvasColor: darkCreamColor,
      buttonColor: lighBluishColor,
      accentColor: Colors.white,
      appBarTheme: AppBarTheme(
        color: Colors.white,
        elevation: 0.0,
        iconTheme: IconThemeData(color: Colors.white),
        titleTextStyle: TextStyle(color: Colors.white),
        toolbarTextStyle: Theme.of(context).textTheme.bodyText1,
        textTheme: Theme.of(context).textTheme.copyWith(
            headline6:
                context.textTheme.headline6?.copyWith(color: Colors.white)),
      ));

  static Color PinkColor = Color.fromARGB(255, 220, 121, 185);
  static Color PurpleColor = Color(0xFF8E24AA);
  static Color OrangeColor = Color(0xFFFFF3E0);
  static Color DarkBlue = Color(0xFF0D47A1);
  static Color CreamColor = Color(0xFFFCE4EC);
  static Color creamColor2 = Color(0xfff5f5f5);
  static Color darkBlueColor = Color(0xff403b58);
  static Color darkCreamColor = Vx.gray800;
  static Color lighBluishColor = Vx.indigo500;
}
