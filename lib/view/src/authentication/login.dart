import 'package:amal/view/widgets/buttons.dart';
import 'package:amal/view/widgets/extensions.dart';
import 'package:amal/view/widgets/textformfields.dart';
import 'package:flutter/material.dart';

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
              prefixIcon: Icons.account_box,
            ),
            15.heigth,
            const CustomTextField(hint: 'Password', prefixIcon: Icons.key),
            40.heigth,
            CustomButton(
              text: 'SIGN IN',
              isExpand: true,
              onTap: submit,
            )
          ],
        ),
      ),
    );
  }

  void submit() {}
}
