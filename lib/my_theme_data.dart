import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islami_app/app_colors.dart';

class MyThemeData{


  static ThemeData lightTheme =ThemeData(
      scaffoldBackgroundColor: Colors.transparent,
      appBarTheme: AppBarTheme(
        color: Colors.transparent,
        elevation:0 ,
        titleTextStyle: GoogleFonts.elMessiri(
            fontSize: 30,fontWeight: FontWeight.bold,color: Colors.black),
        centerTitle: true,
        iconTheme: IconThemeData(
          size: 30,
          color: Color(0xffB7935F)
        )

      ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        selectedItemColor: Color(0xff242424),
        unselectedItemColor: Colors.white,
        backgroundColor: Color(0xffB7935F),
        type: BottomNavigationBarType.fixed,
        showUnselectedLabels: false,
        showSelectedLabels: true,

      ),
    dividerTheme: DividerThemeData(
      color: Color(0xffB7935F),
      thickness: 3,

    ),
    iconTheme: IconThemeData(
      color: Color(0xffB7935F),
      size: 25
    ),
    textTheme: TextTheme(
            bodyLarge: GoogleFonts.elMessiri(
                fontSize: 30,fontWeight: FontWeight.bold,color: Colors.black) ,
            bodyMedium:  GoogleFonts.elMessiri(
                fontSize: 25,fontWeight: FontWeight.w500,color: Colors.black),
            bodySmall:  GoogleFonts.elMessiri(
                fontSize: 20,fontWeight: FontWeight.normal,color: Colors.black)

    ),
    colorScheme:const ColorScheme(
      brightness:Brightness.light ,
      primary:AppColors.Primary ,
      onPrimary:AppColors.Primary,
      secondary:AppColors.Primary ,
      onSecondary:AppColors.Primary ,
      error: AppColors.Primary,
      onError:AppColors.Primary,
      background: AppColors.Primary,
      onBackground: AppColors.Primary,
      surface: AppColors.Primary,
      onSurface:AppColors.Primary
    ),

  );


  static ThemeData darkTheme =ThemeData(
    scaffoldBackgroundColor: Colors.transparent,
    appBarTheme: AppBarTheme(
        color: Colors.transparent,
        elevation:0 ,
        titleTextStyle: GoogleFonts.elMessiri(
            fontSize: 30,fontWeight: FontWeight.bold,color: Colors.white,),
        centerTitle: true,
        iconTheme: IconThemeData(
            size: 30,
            color: Colors.white
        )

    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      selectedItemColor: AppColors.YellowColor,
      unselectedItemColor: Colors.white,
      backgroundColor: AppColors.PrimaryDark,
      type: BottomNavigationBarType.fixed,
      showUnselectedLabels: false,
      showSelectedLabels: true,

    ),
    dividerTheme: DividerThemeData(
      color: AppColors.YellowColor,
      thickness: 3,

    ),
    iconTheme: IconThemeData(
        color: Color(0xffB7935F),
        size: 25
    ),
    textTheme: TextTheme(
        bodyLarge: GoogleFonts.elMessiri(
            fontSize: 30,fontWeight: FontWeight.bold,color: Colors.white) ,
        bodyMedium:  GoogleFonts.elMessiri(
            fontSize: 25,fontWeight: FontWeight.w500,color: Colors.white),
        bodySmall:  GoogleFonts.elMessiri(
            fontSize: 20,fontWeight: FontWeight.normal,color: Colors.yellow)

    ),
    colorScheme:const ColorScheme(
        brightness:Brightness.light ,
        primary:AppColors.Primary ,
        onPrimary:AppColors.Primary,
        secondary:AppColors.Primary ,
        onSecondary:AppColors.Primary ,
        error: AppColors.Primary,
        onError:AppColors.Primary,
        background: AppColors.Primary,
        onBackground: AppColors.Primary,
        surface: AppColors.Primary,
        onSurface:AppColors.Primary
    ),

  );


}