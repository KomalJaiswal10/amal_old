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
  var expanded = false;
  final double _bigFontSize = 200;
  bool yes = false;

  @override
  void initState() {
    Future.delayed(const Duration(seconds: 2))
        .then((value) => setState(() => expanded = true))
        .then((value) {
      print('here');
      const Duration(minutes: 5);
      setState(() {
        yes = true;
      });

      print('here2');
    }).then((value) {
      print('nav');
      if (yes == true) {
        // Get.to(() => const LoginPage());
      }
    });
    // const Duration(minutes: 2)).whenComplete(() => Get.to(() => const LoginPage()));
    // .then((value) => Get.to(() => const LoginPage()));
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
              alignment: expanded ? Alignment.topRight : Alignment.center,
              duration: const Duration(seconds: 1),
              curve: Curves.fastOutSlowIn,
              child: Image.asset('assets/app_logo/aman_lotus.png',
                  width: !expanded ? _bigFontSize : 60),
            ),
          ),
          Visibility(
            visible: expanded,
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
