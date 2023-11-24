import 'package:amal/view/src/authentication/login.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../service/constant/colors.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  bool isAnimated = false;
  final double _bigFontSize = 700;

  @override
  void initState() {
    Future.delayed(const Duration(seconds: 2))
        .then((value) => setState(() => isAnimated = true))
        .then((value) => Future.delayed(const Duration(milliseconds: 1988))
            // .then((value) => Get.offAll(() => const LoginPage()))
            );

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Stack(alignment: Alignment.center, children: [
          Container(
            alignment: Alignment.center,
            height: 145,
            width: 190,
            child: AnimatedAlign(
              alignment: isAnimated ? Alignment.topRight : Alignment.center,
              duration: const Duration(seconds: 1),
              curve: Curves.ease,
              child: Image.asset('assets/amal_lotus.png',
                  width: !isAnimated ? _bigFontSize : 80),
            ),
          ),
          Visibility(
            visible: isAnimated,
            child: AnimatedTextKit(
              totalRepeatCount: 1,
              animatedTexts: [
                FadeAnimatedText('Amal',
                    fadeOutBegin: 1,
                    textAlign: TextAlign.center,
                    textStyle: TextStyle(
                        fontFamily: GoogleFonts.mrsSaintDelafield().fontFamily,
                        fontSize: 120,
                        color: AAppColors.amalGreen)),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
