import 'package:amal/service/constant/colors.dart';
import 'package:amal/view/widgets/extensions.dart';
import 'package:amal/view/widgets/textformfields.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const CustomTextField(
              hint: 'Username',
              suffixicon: Icons.account_box,
            ),
            15.heigth,
            const CustomTextField(hint: 'Password', suffixicon: Icons.key),
            40.heigth,
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 3),
              padding: const EdgeInsets.symmetric(vertical: 15.0),
              width: Get.width,
              decoration: const BoxDecoration(
                  color: Color(0xff177C88),
                  borderRadius: BorderRadius.all(Radius.circular(8))),
              child: Center(
                child: Text(
                  'Sign In',
                  style: Theme.of(context).textTheme.titleLarge!.copyWith(
                      fontWeight: FontWeight.bold, color: AAppColors.white),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
