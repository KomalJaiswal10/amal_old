import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../service/constant/colors.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  var expanded = false;
  final double _bigFontSize = 200;

  @override
  void initState() {
    Future.delayed(const Duration(seconds: 1))
        .then((value) => setState(() => expanded = true))
        .then((value) => const Duration(seconds: 1));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        child: Stack(
          alignment: Alignment.center,
          children: [
            AnimatedDefaultTextStyle(
              duration: const Duration(seconds: 1),
              curve: Curves.easeInBack,
              style: TextStyle(
                color: const Color(0xFF4e954e),
                fontSize: !expanded ? _bigFontSize : 50,
                fontFamily: 'Montserrat',
                fontWeight: FontWeight.w600,
              ),
              child: Image.asset('assets/app_logo/aman_lotus.png',
                  width: !expanded ? _bigFontSize : 60),
            ),
            AnimatedCrossFade(
              firstCurve: Curves.fastOutSlowIn,
              crossFadeState: !expanded
                  ? CrossFadeState.showFirst
                  : CrossFadeState.showSecond,
              duration: const Duration(seconds: 1),
              firstChild: Container(),
              secondChild: AnimatedTextKit(
                totalRepeatCount: 1,
                // pause: const Duration(seconds: 180),
                animatedTexts: [
                  FadeAnimatedText('Amal',
                      // fadeInEnd: 0.2,
                      // fadeOutBegin: 2,
                      textAlign: TextAlign.center,
                      textStyle: TextStyle(
                          fontFamily:
                              GoogleFonts.mrsSaintDelafield().fontFamily,
                          fontSize: 120,
                          color: AAppColors.amalGreen)),
                ],
                // onTap: onTap,
              ),
              alignment: Alignment.centerLeft,
              sizeCurve: Curves.easeInOut,
            ),
          ],
        ),
      ),
    );
  }
}

// class SplashScreen extends StatelessWidget {
//   const SplashScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: Stack(alignment: Alignment.center, children: [
//           Positioned(
//               right: 10,
//               top: 20,
//               child: Image.asset('assets/app_logo/aman_lotus.png', width: 60)),
          // AnimatedTextKit(
          //   totalRepeatCount: 1,
          //   // pause: const Duration(seconds: 180),
          //   animatedTexts: [
          //     FadeAnimatedText('Amal',
          //         // fadeInEnd: 0.2,
          //         // fadeOutBegin: 2,
          //         textAlign: TextAlign.center,
          //         textStyle: TextStyle(
          //             fontFamily: GoogleFonts.mrsSaintDelafield().fontFamily,
          //             fontSize: 120,
          //             color: AAppColors.amalGreen)),
          //   ],
          //   // onTap: onTap,
          // ),
//         ]),
//       ),
//     );
//   }
// }
