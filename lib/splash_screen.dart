import 'package:flutter/material.dart';
import 'package:tech_blog/gen/assets.gen.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'Colors.dart';
import 'main_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(const Duration(milliseconds: 2500)).then((value) => {
          Navigator.pushReplacement(context,
              MaterialPageRoute(builder: (context) => const MainScreen()))
        });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image(
                image: Assets.images.logo.provider(),
                height: 64,
              ),
              const SizedBox(height: 32),
              const SpinKitFadingCube(
                duration: Duration(seconds: 1),
                color: SolidColors.primaryColor,
                size: 32.0,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
