import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../service/constant/colors.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Stack(alignment: Alignment.center, children: [
          Positioned(
              right: 10,
              top: 20,
              child: Image.asset('assets/app_logo/aman_lotus.png', width: 60)),
          DefaultTextStyle(
            style: TextStyle(
              fontSize: 30.0,
              fontFamily: GoogleFonts.allura().fontFamily,
            ),
            child: AnimatedTextKit(
              totalRepeatCount: 1,
              // pause: const Duration(seconds: 180),
              animatedTexts: [
                WavyAnimatedText('Amal',
                    textAlign: TextAlign.center,
                    textStyle: TextStyle(
                        fontFamily: GoogleFonts.mrsSaintDelafield().fontFamily,
                        fontSize: 120,
                        color: AAppColors.amalGreen)),
              ],
              // onTap: onTap,
            ),
          ),
        ]),
      ),
    );
  }
}
