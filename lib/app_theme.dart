import 'dart:ui';

import 'package:flutter/material.dart';

class AppTheme{
  //Light_Theme
  static const Color lightPrimary = Color(0xFFB7935F);
  static const Color white = Color(0xFFF8F8F8);
  static const Color black = Color(0xFF242424);
  static ThemeData lightTheme = ThemeData(
    primaryColor: lightPrimary,
      scaffoldBackgroundColor: Colors.transparent,
      appBarTheme: const AppBarTheme(
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        titleTextStyle: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 25,
            color: black
        ),
      ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: black,
        unselectedItemColor: white,
        backgroundColor: lightPrimary,
  ),
    textTheme: TextTheme(
      headlineSmall:
      TextStyle(
          fontSize: 25,
          fontWeight: FontWeight.w400,
          color: black
      ),
      titleLarge:
      TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.w400,
          color: black
      ),
        labelMedium: //Doaa Sebha
        TextStyle(

            fontSize: 25,
            fontWeight: FontWeight.w400,
            color: white
        ),
        labelSmall: //language // Setting
        TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w400,
            color: black
        )

    ),
    switchTheme: SwitchThemeData(thumbColor: WidgetStatePropertyAll(white)),


  );

  //Dark_Theme
  static const Color darkPrimary = Color(0xFF141A2E);
  static const Color gold = Color(0xFFFACC1D);
  static ThemeData darkTheme = ThemeData(
      scaffoldBackgroundColor: Colors.transparent,
      appBarTheme: AppBarTheme(
        foregroundColor: white,
        backgroundColor: Colors.transparent,
        centerTitle: true,
        titleTextStyle: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 25,
            color: white
  ),
      ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: gold,
        unselectedItemColor: white,
        backgroundColor: darkPrimary,
      ),
      textTheme: TextTheme(
          headlineSmall:
          TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.w400,
              color: white
          ),
          titleLarge:
          TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w400,
              color: gold
              ),
          labelMedium: //Doaa Sebha
          TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.w400,
              color: black
          ),
          labelSmall: //language // Setting
          TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w400,
              color: white
          )
      ),
      switchTheme: SwitchThemeData(thumbColor: WidgetStatePropertyAll(white)),
  );
}