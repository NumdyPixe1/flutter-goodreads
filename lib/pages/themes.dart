import 'package:flutter/material.dart';

ThemeData get lightTheme => ThemeData.from(
        colorScheme: ColorScheme.fromSeed(
            seedColor: Color.fromRGBO(254, 254, 254, 1),
            surfaceContainer: Color.fromRGBO(254, 253, 251, 1),
            brightness: Brightness.light))
    .copyWith(
        iconTheme: IconThemeData(color: Colors.black),
        appBarTheme: AppBarTheme(
            centerTitle: false,
            backgroundColor: Color.fromRGBO(244, 241, 234, 1)),
        textTheme: TextTheme(
            headlineSmall: TextStyle(color: Color.fromRGBO(57, 57, 57, 1)),
            titleLarge: TextStyle(color: Color.fromRGBO(57, 57, 57, 1)),
            titleMedium: TextStyle(color: Color.fromRGBO(57, 57, 57, 1)),
            titleSmall: TextStyle(color: Color.fromRGBO(57, 57, 57, 1))),
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
            selectedItemColor: Color.fromRGBO(28, 23, 19, 1),
            unselectedItemColor: Color.fromRGBO(28, 23, 19, 0.5),
            backgroundColor: Color.fromRGBO(244, 241, 234, 1)));

ThemeData get darkTheme => ThemeData.from(
        colorScheme: ColorScheme.fromSeed(
            seedColor: Color.fromRGBO(27, 27, 27, 1),
            surface: Color.fromRGBO(27, 27, 27, 1),
            surfaceContainer: Color.fromRGBO(40, 31, 31, 1),
            brightness: Brightness.dark))
    .copyWith(
        iconTheme: IconThemeData(color: Colors.white),
        appBarTheme: AppBarTheme(
            foregroundColor: Colors.white,
            centerTitle: false,
            backgroundColor: Color.fromRGBO(40, 31, 31, 1)),
        textTheme: TextTheme(
            headlineSmall: TextStyle(color: Colors.white),
            titleLarge: TextStyle(color: Colors.white),
            titleMedium: TextStyle(color: Colors.white),
            titleSmall: TextStyle(color: Color.fromRGBO(254, 232, 208, 1))),
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
            selectedItemColor: Colors.white,
            unselectedItemColor: Colors.white,
            backgroundColor: Color.fromRGBO(40, 31, 31, 1)));
