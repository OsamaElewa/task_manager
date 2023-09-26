import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tasks_app/core/utils/app_colors.dart';
import 'package:tasks_app/core/utils/app_constants.dart';
import 'package:tasks_app/core/utils/app_styles.dart';

ThemeData appTheme() {
  return ThemeData(
    primarySwatch: Colors.deepPurple,
    unselectedWidgetColor: AppColors.grey,
    textTheme: GoogleFonts.montserratTextTheme(),
    primaryColor: AppColors.deepPurple,
    //primarySwatch: MaterialColor(0xff673ab7, color),
    scaffoldBackgroundColor: AppColors.white,
    appBarTheme: AppBarTheme(
        color: Colors.transparent,
        elevation: 0,
        systemOverlayStyle: AppConstants.systemUiOverlayStyle,
        titleTextStyle: AppStyles.textStyle25,
        centerTitle: true),
  );
}
