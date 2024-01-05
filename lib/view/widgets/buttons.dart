import 'package:amal/service/constant/colors.dart';
import 'package:amal/service/constant/dimensions.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {super.key,
      required this.text,
      required this.onTap,
      this.isExpand = false});
  final String text;
  final VoidCallback onTap;
  final bool isExpand;

  @override
  Widget build(BuildContext context) {
    bool isPressed = false;
    return StatefulBuilder(builder: (context, state) {
      return GestureDetector(
          onTapUp: (value) {
            isPressed = false;
            state(() {});
          },
          onTapDown: (value) {
            isPressed = true;
            state(() {});
          },
          onTap: onTap,
          child: Container(
            width: isExpand ? Dimensions.width : Dimensions.width * .4,
            padding: const EdgeInsets.symmetric(vertical: 15.0, horizontal: 5),
            decoration: BoxDecoration(
                color: AppColors.primaryBlue,
                borderRadius: const BorderRadius.all(Radius.circular(8)),
                boxShadow: isPressed
                    ? [
                        const BoxShadow(
                            blurRadius: 5.0,
                            offset: Offset(1, 5),
                            color: Colors.grey)
                      ]
                    : []),
            child: Center(
              child: Text(
                text,
                style: Theme.of(context).textTheme.titleMedium!.copyWith(
                    fontWeight: FontWeight.bold, color: AppColors.whiteBg),
              ),
            ),
          ));
    });
  }
}
