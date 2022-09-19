import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:spotify/screens/home_screen.dart';
import 'package:spotify/theme/my_theme.dart';

void main() => runApp(
  Sizer(
    builder: (_, __, ___) => const SpotifyClon()
  )
);

class SpotifyClon extends StatelessWidget {

  const SpotifyClon({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'SpotifyClon',
      theme: MyTheme.darkTheme,
      builder: (BuildContext context, child) => const HomeScreen()
    );
  }
}