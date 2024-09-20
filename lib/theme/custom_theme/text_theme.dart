import 'package:flutter/material.dart';

class TTextTheme {
  TTextTheme._();
  static TextTheme lightTextTheme = TextTheme(
    headlineLarge: const TextStyle().copyWith(
        fontSize: 32, fontWeight: FontWeight.bold, color: Colors.black),
    headlineMedium: const TextStyle().copyWith(
        fontSize: 24, fontWeight: FontWeight.w600, color: Colors.black),
    headlineSmall: const TextStyle().copyWith(
        fontSize: 18, fontWeight: FontWeight.w500, color: Colors.black),
    titleLarge: const TextStyle().copyWith(
        fontSize: 24, fontWeight: FontWeight.bold, color: Colors.black),
    titleMedium: const TextStyle().copyWith(
        fontSize: 18, fontWeight: FontWeight.w500, color: Colors.black),
    titleSmall: const TextStyle().copyWith(
        fontSize: 16, fontWeight: FontWeight.w500, color: Colors.black),
    bodyLarge: const TextStyle().copyWith(
        fontSize: 14, fontWeight: FontWeight.bold, color: Colors.black),
    bodyMedium: const TextStyle().copyWith(
        fontSize: 14, fontWeight: FontWeight.w600, color: Colors.black),
    bodySmall: const TextStyle().copyWith(
        fontSize: 14, fontWeight: FontWeight.w500, color: Colors.black),
     );

  static TextTheme darkTexttheme = TextTheme(
    headlineLarge: const TextStyle().copyWith(
        fontSize: 32, fontWeight: FontWeight.bold, color: Colors.white),
    headlineMedium: const TextStyle().copyWith(
        fontSize: 24, fontWeight: FontWeight.w600, color: Colors.white),
    headlineSmall: const TextStyle().copyWith(
        fontSize: 18, fontWeight: FontWeight.w600, color: Colors.white),
    titleLarge: const TextStyle().copyWith(
        fontSize: 32, fontWeight: FontWeight.bold, color: Colors.white),
    titleMedium: const TextStyle().copyWith(
        fontSize: 18, fontWeight: FontWeight.w500, color: Colors.black),
    titleSmall: const TextStyle().copyWith(
        fontSize: 16, fontWeight: FontWeight.w500, color: Colors.black),
    bodyLarge: const TextStyle().copyWith(
        fontSize: 32, fontWeight: FontWeight.bold, color: Colors.white),
    bodyMedium: const TextStyle().copyWith(
        fontSize: 24, fontWeight: FontWeight.w600, color: Colors.white),
    bodySmall: const TextStyle().copyWith(
        fontSize: 18, fontWeight: FontWeight.w600, color: Colors.white),
  );
}
