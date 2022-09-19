import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class MyTheme {

  // Main Colors
  static const Color primary = Color.fromRGBO(30, 215, 96, 1);
  static const Color dark = Color.fromRGBO(18, 18, 18, 1);
  static const Color darkLight = Color.fromRGBO(42, 42, 42, 1);
  static const Color darkLighter = Color.fromRGBO(148, 148, 148, 1);
  static const Color darkLightest = Color.fromRGBO(193, 197, 199, 1);
  static const Color white = Colors.white;
  // Espaciado
  static EdgeInsetsGeometry bodySpacingHorizontal = EdgeInsets.symmetric(horizontal: 4.w);

  static final ThemeData darkTheme = ThemeData.dark().copyWith(

    useMaterial3: true,
    // Set Colors
    primaryColor: primary,
    colorScheme: ColorScheme.fromSwatch().copyWith(secondary: primary),
    scaffoldBackgroundColor: dark,
    splashColor: primary.withOpacity(0.4),
    highlightColor: primary.withOpacity(0.4),

    // Typografia
    textTheme: ThemeData.light().textTheme.apply(
      fontFamily: 'Gotham',
      bodyColor: white,
      displayColor: white,
      decorationColor: white,
    ),
  );
}
