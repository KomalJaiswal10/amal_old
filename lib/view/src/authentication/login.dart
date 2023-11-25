import 'package:amal/service/constant/colors.dart';
import 'package:amal/view/widgets/extensions.dart';
import 'package:amal/view/widgets/textformfields.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gradients/gradients.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Column(
            children: [
              // Image.asset(
              //   'assets/app_logo/test.png',
              //   height: 500,
              // ),jhhhh
              const CustomTextField(
                hint: 'Email',
              ),
              const SizedBox().sizedHeight(height: 10),
              const CustomTextField(
                hint: 'Password',
              ),

              const SizedBox().sizedHeight(height: 20),
              Container(
                padding: const EdgeInsets.all(18.0),
                width: Get.width,
                color: const Color(0xff177C88),
                child: const Text('Login'),
              )
            ],
          ),
        ),
      ),
    ));
  }
}
