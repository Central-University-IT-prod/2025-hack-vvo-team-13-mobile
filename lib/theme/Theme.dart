// ignore: file_names
import 'package:flutter/material.dart';

whiteTheme() {
  return ThemeData(
    textSelectionTheme: TextSelectionThemeData(cursorColor: Colors.indigoAccent.shade700),
    iconTheme: IconThemeData(color: Colors.grey),
    primaryColor: Colors.indigoAccent.shade700,
    cardColor: Colors.indigoAccent.shade700.withOpacity(0.2),
    textTheme: TextTheme(bodyMedium: TextStyle(color: Colors.black, fontSize: 22, fontWeight: FontWeight.bold), headlineSmall: TextStyle(color: Colors.grey, fontSize: 18), headlineMedium: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold), labelSmall: TextStyle(color: Colors.black, fontSize: 15))
  );
}

blackTheme() {
  return ThemeData(
    textSelectionTheme: TextSelectionThemeData(cursorColor: Colors.indigoAccent.shade700),
    iconTheme: IconThemeData(color: Colors.grey),
    primaryColor: Colors.indigoAccent.shade700,
    cardColor: Colors.indigoAccent.shade700.withOpacity(0.2),
    textTheme: TextTheme(bodyMedium: TextStyle(color: Colors.black, fontSize: 22), headlineSmall: TextStyle(color: Colors.grey, fontSize: 18), headlineMedium: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18), labelSmall: TextStyle(color: Colors.black, fontSize: 15))

  );
}