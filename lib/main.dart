// ignore_for_file: camel_case_types, unused_import, depend_on_referenced_packages, unused_local_variable
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:tech_blog/Colors.dart';
import 'package:tech_blog/gen/assets.gen.dart';
import 'splash_screen.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: SolidColors.statusbarColor,
    statusBarIconBrightness: Brightness.dark,
    systemNavigationBarColor: SolidColors.systemNavigationBarColor,
  ));

  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: app(),
  ));
}

class app extends StatelessWidget {
  const app({super.key});
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return MaterialApp(
        scrollBehavior: MyCustomScrollBehavior(),
        localizationsDelegates: const [
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        supportedLocales: const [
          Locale('fa', ''), // farsi
        ],
        theme: ThemeData(
            fontFamily: "Rokh",
            // headline 1
            textTheme: TextTheme(
              displayLarge: TextStyle(
                  fontSize: size.height / 32.73,
                  fontFamily: "Rokh",
                  fontWeight: FontWeight.w700,
                  color: SolidColors.posterTitleDisPlayLarge),
              // sub title
              titleMedium: TextStyle(
                  fontSize: size.height / 49.1,
                  fontFamily: "Rokh",
                  fontWeight: FontWeight.w400,
                  color: SolidColors.PosterSubTitleMedium),
              // headline 2
              displayMedium: const TextStyle(
                  fontSize: 15,
                  fontFamily: "Rokh",
                  fontWeight: FontWeight.w500,
                  color: SolidColors.tagTitleText),
              // headline 3
              displaySmall: const TextStyle(
                  fontSize: 15,
                  fontFamily: "Rokh",
                  fontWeight: FontWeight.w700,
                  color: SolidColors.hottestPosts),
            )),
        debugShowCheckedModeBanner: false,
        title: "تِک بلاگ",
        home: const Scaffold(
          body: SplashScreen(),
        ));
  }
}

// scroll project
class MyCustomScrollBehavior extends MaterialScrollBehavior {
  // Override behavior methods and getters like dragDevices
  @override
  Set<PointerDeviceKind> get dragDevices => {
        PointerDeviceKind.touch,
        PointerDeviceKind.mouse,
      };
}
