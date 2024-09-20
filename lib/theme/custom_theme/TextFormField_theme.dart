   import 'package:flutter/material.dart';
   class TTextFormField {
     TTextFormField._();
      static InputDecorationTheme lightInputDecoration = InputDecorationTheme(
      errorMaxLines: 3,
      prefixIconColor: Colors.grey,
      suffixIconColor: Colors.grey,
      labelStyle: const TextStyle().copyWith(fontSize: 14, color: Colors.black),
      hintStyle: const TextStyle().copyWith(fontSize: 14, color: Colors.black),
      errorStyle: const TextStyle().copyWith(fontSize: 14, color: Colors.grey),
      floatingLabelStyle:const TextStyle().copyWith(fontSize: 14, color: Colors.black),
          border: const OutlineInputBorder().copyWith(
          borderRadius: BorderRadius.circular(14),
          borderSide: const BorderSide(width: 1, color: Colors.grey),
          ),
        );
     static InputDecorationTheme darkInputDecoration = InputDecorationTheme(
    errorMaxLines: 3,
    prefixIconColor: Colors.white,
    suffixIconColor: Colors.white,
    labelStyle: const TextStyle().copyWith(fontSize: 14, color: Colors.white),
    hintStyle: const TextStyle().copyWith(fontSize: 14, color: Colors.white),
    errorStyle: const TextStyle().copyWith(fontSize: 14, color: Colors.white),
    floatingLabelStyle:
    const TextStyle().copyWith(fontSize: 14, color: Colors.white),
    border: OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(14),
      borderSide: BorderSide(width: 1, color: Colors.grey),
    ),
  );

}
