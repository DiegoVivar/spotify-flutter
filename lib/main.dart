import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sizer/sizer.dart';
import 'package:spotify/screens/home_screen.dart';
import 'package:spotify/theme/my_theme.dart';

void main() {

  WidgetsFlutterBinding.ensureInitialized();
  // Para versiones antiguas de Android
  HttpOverrides.global = MyHttpOverrides();

  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp])
    .then((_) {
      runApp(
        Sizer(
          builder: (context, orientation, deviceType) => const SpotifyClon(),
        )
      );
    });
}

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

class MyHttpOverrides extends HttpOverrides{
  @override
  HttpClient createHttpClient(SecurityContext? context){
    return super.createHttpClient(context)
      ..badCertificateCallback = (X509Certificate cert, String host, int port)=> true;
  }
}