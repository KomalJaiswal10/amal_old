import 'package:amal/view/widgets/textformfields.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
        child: Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(18.0),
              child: CustomTextField(
                hint: 'Email',
              ),
            )
          ],
        ),
      ),
    ));
  }
}
