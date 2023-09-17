import 'package:eloy_dev_client/src/constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomTheme {
  static ThemeData theme(BuildContext context) {
    return ThemeData(
      primaryColor: Constants.primaryColor,
      colorScheme: ColorScheme.fromSwatch(
        primarySwatch: Constants.secondaryColor,
      ),
      textTheme: GoogleFonts.poppinsTextTheme(
        Theme.of(context).textTheme,
      ).copyWith(
        labelLarge: GoogleFonts.poppins(fontWeight: FontWeight.w600),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          visualDensity: VisualDensity.comfortable,
          padding: EdgeInsets.symmetric(
            vertical: Constants.padding(context) * 0.5,
            horizontal: Constants.padding(context),
          ),
        ),
      ),
    );
  }
}
