import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'colors.dart';




ThemeData darkTheme = ThemeData(
  primarySwatch: defaultColor,
  scaffoldBackgroundColor:const Color.fromRGBO(51, 55, 57, 1),
  appBarTheme:const AppBarTheme(
    titleSpacing: 20.0,
    systemOverlayStyle: SystemUiOverlayStyle(
      statusBarColor: Color.fromRGBO(51, 55, 57, 1),
      statusBarIconBrightness: Brightness.light,
    ),
    backgroundColor: Color.fromRGBO(51, 55, 57, 1),
    elevation: 0.0,
    titleTextStyle: TextStyle(
      color: Colors.white,
      fontSize: 20.0,
      fontWeight: FontWeight.bold,
    ),
    iconTheme: IconThemeData(
      color: Colors.white,
    ),
  ),
  bottomNavigationBarTheme:const BottomNavigationBarThemeData(
    type: BottomNavigationBarType.fixed,
    selectedItemColor: defaultColor,
    unselectedItemColor: Colors.grey,
    elevation: 20.0,
    backgroundColor: Color.fromRGBO(51, 55, 57, 1),
  ),
  textTheme:const TextTheme(

    subtitle1: TextStyle(

      fontWeight: FontWeight.w600,
      color: Colors.white,
    ),
    subtitle2: TextStyle(

      fontWeight: FontWeight.w600,
      color: Colors.white,
    ),
    bodyText1: TextStyle(
      fontSize: 18.0,
      fontWeight: FontWeight.w600,
      color: Colors.white,
    ),
    bodyText2: TextStyle(
      fontSize: 18.0,
      fontWeight: FontWeight.w600,
      color: Colors.white,
    ),

    headline1:  TextStyle(

      fontWeight: FontWeight.w600,
      color: Colors.white,
    ),
    headline2:  TextStyle(

      fontWeight: FontWeight.w600,
      color: Colors.white,
    ),
    headline3:  TextStyle(

      fontWeight: FontWeight.w600,
      color: Colors.white,
    ),
    headline4:  TextStyle(

      fontWeight: FontWeight.w600,
      color: Colors.white,
    ),
    headline5:  TextStyle(

      fontWeight: FontWeight.w600,
      color: Colors.white,
    ),
    headline6:  TextStyle(

      fontWeight: FontWeight.w600,
      color: Colors.white,
    ),
    headlineLarge:  TextStyle(

      fontWeight: FontWeight.w600,
      color: Colors.white,
    ),
    labelMedium:  TextStyle(

      fontWeight: FontWeight.w600,
      color: Colors.white,
    ),
    //titleSmall:  TextStyle(color: Colors.white),
  ).copyWith(bodyLarge:TextStyle(

    fontWeight: FontWeight.w600,
    color: Colors.white,
  ),bodyMedium:TextStyle(

    fontWeight: FontWeight.w600,
    color: Colors.white,
  ),bodySmall:TextStyle(

    fontWeight: FontWeight.w600,
    color: Colors.white,
  ),headlineSmall:TextStyle(

    fontWeight: FontWeight.w600,
    color: Colors.white,
  ),titleSmall:const  TextStyle(

    fontWeight: FontWeight.w600,
    color: Colors.white,
  ),titleMedium:const  TextStyle(

    fontWeight: FontWeight.w600,
    color: Colors.white,
  ),titleLarge:const  TextStyle(fontWeight: FontWeight.w600, color: Colors.white,),labelSmall: TextStyle(

    fontWeight: FontWeight.w600,
    color: Colors.white,
  ),labelLarge: TextStyle(

    fontWeight: FontWeight.w600,
    color: Colors.white,
  ),labelMedium: TextStyle(

    fontWeight: FontWeight.w600,
    color: Colors.white,
  ),),
);

ThemeData lightTheme = ThemeData(
  primarySwatch: defaultColor,
  tabBarTheme:const TabBarTheme(labelColor: Colors.black),
  scaffoldBackgroundColor: Colors.white,
  appBarTheme:const AppBarTheme(
    titleSpacing: 20.0,

    systemOverlayStyle: SystemUiOverlayStyle(
      statusBarColor: Colors.white,
      statusBarIconBrightness: Brightness.dark,
    ),
    backgroundColor: Colors.white,
    elevation: 0.0,
    titleTextStyle: TextStyle(
      color: Colors.black,
      fontSize: 20.0,
      fontWeight: FontWeight.bold,
    ),
    iconTheme: IconThemeData(
      color: Colors.black,
    ),
  ),
  bottomNavigationBarTheme:const BottomNavigationBarThemeData(
    type: BottomNavigationBarType.fixed,
    selectedItemColor: defaultColor,
    unselectedItemColor: Colors.grey,
    elevation: 20.0,
    backgroundColor: Colors.white,
  ),
  textTheme:const TextTheme(
    bodyText1: TextStyle(
      fontSize: 18.0,
      fontWeight: FontWeight.w600,
      color: Colors.black,
    ),
    subtitle1: TextStyle(

      fontWeight: FontWeight.w600,
      color: Colors.black,
    ),
    subtitle2: TextStyle(

      fontWeight: FontWeight.w600,
      color: Colors.black,
    ),

    bodyText2: TextStyle(
      fontSize: 18.0,
      fontWeight: FontWeight.w600,
      color: Colors.black,
    ),

    headline1:  TextStyle(

      fontWeight: FontWeight.w600,
      color: Colors.black,
    ),
    headline2:  TextStyle(

      fontWeight: FontWeight.w600,
      color: Colors.black,
    ),
    headline3:  TextStyle(

      fontWeight: FontWeight.w600,
      color: Colors.black,
    ),
    headline4:  TextStyle(

      fontWeight: FontWeight.w600,
      color: Colors.black,
    ),
    headline5:  TextStyle(

      fontWeight: FontWeight.w600,
      color: Colors.black,
    ),
    headline6:  TextStyle(

      fontWeight: FontWeight.w600,
      color: Colors.black,
    ),
    headlineLarge:  TextStyle(

      fontWeight: FontWeight.w600,
      color: Colors.black,
    ),
    labelMedium:  TextStyle(

      fontWeight: FontWeight.w600,
      color: Colors.black,
    ),
  ),

);