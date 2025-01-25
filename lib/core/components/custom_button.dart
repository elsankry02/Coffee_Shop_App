import 'package:coffee_shop/core/constants/color_manger.dart';
import 'package:coffee_shop/features/data/models/onboarding_model.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.h,
    required this.index,
    required this.textTheme,
  });

  final double h;
  final TextTheme textTheme;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: h * 0.060,
      decoration: BoxDecoration(
          borderRadius: BorderRadiusDirectional.circular(16),
          color: ColorManger.kMaterialColor),
      child: Center(
        child: Text(
          //! Container Text
          onboardingModelFunc()[index].containerText,
          style: textTheme.labelMedium!.copyWith(color: Colors.white),
        ),
      ),
    );
  }
}
